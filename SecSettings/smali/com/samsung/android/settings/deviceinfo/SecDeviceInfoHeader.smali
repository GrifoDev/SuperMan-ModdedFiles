.class public Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceNameEdit:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getDeviceInfoList()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getModelNumberExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v24, "persist.sys.iss.flag_altermodel"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const-string/jumbo v24, "persist.sys.iss.altermodel"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f12119a

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getSerialNumber()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v24

    if-nez v24, :cond_1

    const-string/jumbo v24, "MTR"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string/jumbo v24, "USC"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string/jumbo v24, "LRA"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string/jumbo v24, "ACG"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "phone"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v19

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f121a22

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    add-int/lit8 v27, v20, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const v27, 0x7f12196d

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_2
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getIMEI(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_4

    const-string/jumbo v24, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    :cond_4
    const-string/jumbo v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f121a31

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    const-string/jumbo v25, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    const-string/jumbo v24, "none"

    const-string/jumbo v25, "ril.approved_modemver"

    const-string/jumbo v26, "none"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_e

    const-string/jumbo v6, "ril.approved_modemver"

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f1207e9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f1219d5

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v24

    if-eqz v24, :cond_7

    const-string/jumbo v24, "ril.hw_ver"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f120cc9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    const-string/jumbo v24, "ro.product.name"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v24, "hero"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v24

    if-eqz v24, :cond_8

    const-string/jumbo v24, "ril.official_cscver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f1207e9

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f1219d5

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v24, "ril.approved_cscver"

    const-string/jumbo v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    const-string/jumbo v24, "none"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_8

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f120cc9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v24

    if-nez v24, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    const-string/jumbo v25, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    const-string/jumbo v24, "ril.hw_ver"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, 0x2e

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_9

    add-int/lit8 v24, v13, 0x2

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_9
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f120cc9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    const-string/jumbo v24, "ro.csb_val"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CSB debug keyindex= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v24, "unknown"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    const-string/jumbo v24, "ABSENT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    const-string/jumbo v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_b
    :goto_5
    const-string/jumbo v24, "XSG"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XSD"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XST"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XSZ"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XSM"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XSS"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "XSI"

    sget-object v25, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const-string/jumbo v25, "country_cert_info_enable"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const-string/jumbo v25, "country_cert_info_traid"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const-string/jumbo v25, "country_cert_info_ta"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const-string/jumbo v25, "country_cert_info_name"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_d

    if-eqz v9, :cond_d

    if-eqz v7, :cond_d

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "TRA ID : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\nTA : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_6
    return-object v11

    :cond_e
    const-string/jumbo v6, "gsm.version.baseband"

    goto/16 :goto_2

    :cond_f
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f120cc9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f1207e9

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f120cc9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f1207e9

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_11
    const-string/jumbo v24, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const-string/jumbo v17, "Type: Samsung"

    :goto_7
    new-instance v24, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    const-string/jumbo v25, "Secure boot status"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v24, "2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const-string/jumbo v17, "Type: Knox A"

    goto :goto_7

    :cond_13
    const-string/jumbo v24, "3"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const-string/jumbo v17, "Type: Knox B"

    goto :goto_7

    :cond_14
    const-string/jumbo v24, "4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const-string/jumbo v17, "Type: Knox C"

    goto :goto_7

    :cond_15
    const-string/jumbo v17, "Type: Invalid"

    goto :goto_7

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "XAR"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneNumbers()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v9, 0x7f121c49

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sget-object v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "numSubInfos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLine1Number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "\\+82"

    const-string/jumbo v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 8

    const-string/jumbo v5, "ril.serialnumber"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "00000000000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    const-string/jumbo v2, "ro.serialno"

    :goto_0
    const-string/jumbo v5, "ro.serialno"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serial:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", serialNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MTR"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "USC"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "LRA"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "ACG"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v4, ""

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v4, ""

    :cond_4
    return-object v4

    :cond_5
    const-string/jumbo v2, "ril.serialnumber"

    goto/16 :goto_0

    :cond_6
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private initDeviceName()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "persist.sys.iss.flag_altermodel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initInfoChart()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v15, 0x7f0a04c6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f0d00da

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v14, 0x7f0a08d1

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v15, 0x7f121a2c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    const v14, 0x7f0a01c1

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f0a0634

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f0a0635

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0a0636

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f0d00da

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v14, 0x7f0a08d1

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v14, 0x7f0a01bf

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07026a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07026a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v11, v15, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const v14, 0x7f0a01bf

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const v14, 0x7f0a01bf

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v15, 0x7f121c49

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setHeaderHeight()V
    .locals 10

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v6, 0x7f0a04c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v3

    int-to-double v6, v5

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getDeviceInfoHeader()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->setHeaderHeight()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->initInfoChart()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->initDeviceName()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getDeviceNameEditButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    return-object v0
.end method

.method public getDeviceNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method
