.class public Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDns1:Landroid/preference/EditTextPreference;

.field private mDns2:Landroid/preference/EditTextPreference;

.field private mFirstTime:Z

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRegExpn:Ljava/lang/String;

.field private mRegExpn1:Ljava/lang/String;

.field private mRegExpn_Domain_num:Ljava/lang/String;

.field private mRegExpn_Domain_num1:Ljava/lang/String;

.field private mRegExpn_IP:Ljava/lang/String;

.field private mRegExpn_Pwd:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    const-string/jumbo v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    const-string/jumbo v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    const-string/jumbo v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    const-string/jumbo v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    const-string/jumbo v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method protected static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object p1
.end method

.method private fillUi()V
    .locals 13

    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fillUi(), isFirstTime? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", newAPN? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "numeric = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xe

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    const/4 v10, 0x1

    if-lt v1, v10, :cond_1

    const/4 v10, 0x2

    if-le v1, v10, :cond_2

    :cond_1
    const/4 v1, 0x2

    :cond_2
    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fillUi() : mCursor.getInt(AUTH_TYPE_INDEX) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "kddi_cpa_static_dns1"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "kddi_cpa_static_dns2"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0c006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    sget-object v11, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b1310

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a91

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a92

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a8d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isValidIP(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v6

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidIP : Valid IP == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidIP : unValid IP == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private isValidPort(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v6

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    if-gez v1, :cond_3

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidPort : unValid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "It\'s not number type!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidPort : Valid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    return-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private validateAndSave(Z)Z
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateAndSave()force = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showDialog(I)V

    return v10

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v11, :cond_3

    return v10

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "apn"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "proxy"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "port"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "password"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v6, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string/jumbo v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateAndSave numeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_5

    invoke-virtual {v4, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    :cond_5
    const-string/jumbo v6, "numeric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 2"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 3"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "current"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v11
.end method


# virtual methods
.method public isValidID(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13

    const/16 v9, 0x40

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_0

    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isValidID : inputEmail == null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    sub-int v0, v8, v9

    const/16 v8, 0x18

    if-le v1, v8, :cond_2

    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : limitId == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_2
    const/16 v8, 0x14

    if-le v0, v8, :cond_3

    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : limitDomain == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_3
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_5
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : Valid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :cond_7
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : Invalid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8
.end method

.method public isValidPwd(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inputPwd : inputPwd == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v5

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidPwd : Vaild pwd"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidPwd : Invalid pwd"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b12ef    # 1.84861E38f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    const-string/jumbo v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "dns1"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "dns2"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    const-string/jumbo v4, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    const-string/jumbo v4, "new"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->fillUi()V

    return-void

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x104000a

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b130e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    const v3, 0x7f0b0864

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b1111

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0abc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_added"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const v7, 0x7f0b0a8c

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "auth_type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v9

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const-string/jumbo v6, "apn_http_port"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPort(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a8d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8

    :cond_3
    const-string/jumbo v6, "apn_apn"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v6, ".au-net.ne.jp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a8e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8

    :cond_4
    const-string/jumbo v6, "apn_user"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidID(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a8f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8

    :cond_6
    const-string/jumbo v6, "apn_password"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPwd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0a90

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8

    :cond_8
    const-string/jumbo v6, "dns1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns2"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns1"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8

    :cond_b
    const-string/jumbo v6, "dns2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns2"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v8
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pos"

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAlertDialogAboutInvalid(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b130e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    return-void
.end method
