.class public Lcn/com/xy/sms/sdk/util/KeyManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static channel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static initAppKey()V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " XyHttpRunnable.appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    return-void

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CHANNEL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PKWBZlRIbwLENOVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "hdtKldgsdkgo"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "J8KeTyOROASamsungReminder"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "TGsTZewAYUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "KQIDAQABLEV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "BwIDAQABFROG"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "XwIDAQABYUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "NQIDAQABCOOL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "SAMOPERATORYQIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "SAMBANKVwIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "SAMCLASSFIYVwIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "6QIDAQABSTARRYSKY"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "vwIDAQABLIANLUOOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "5xKI47wSAMALL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "FEhNrwHTXL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "SAMALLxKI47w"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "VMhlWdEwVNEW_LENOVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "jE5vSv5QPIAO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "GwIDAQABZTE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "1i1BDH2wONE+"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "1w36SBLwVNEW_ZTE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "Oq3iD6UlMAGIC"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "7kRgxjdwVNEW_STARRYSKY"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "D6mKXM8MEIZU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "rq7Fyxl5DUOQU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "3GdfMSKwHUAWEI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "j3FIT5mwLETV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "1i1BDH2wONE+CARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "0GCSqGSITOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "UM0srSjQ365"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "YHMesqOQCOOL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "5Mj22a4wHUAWEICARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "wupzCqnwGUAIWU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "XRyvMvZwSMARTISAN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "MEIZUPAYGJw"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "dToXA5JQDAKELE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "p5O4wKmwGIONEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "z5N7W51wKINGSUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "Cko59T6wSUGAR"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "oWIH+3ZQLEIDIANOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "XYTEST"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo v0, "al30zFgQTEST_T"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "gsjHPHwIKOOBEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "AjAFrJSQWENTAI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "JqyMtaHQNUBIA"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "15Du354QGIONEECARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "rahtBH7wTCL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "xU6UT6pwTOS2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "5Gx84kmwYULONG_COOLPAD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string/jumbo v0, "Uj2pznXQHCT"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "tnjdWFeQKTOUCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "XkXZJmwIPPTV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "dGxSiEbwTOSCARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "PzqP0ONQTOSWATCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "VCTyBOSwSmartisan"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "5rLWVKgQMEITU_PHONE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "HUAWEIAND"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "HUAWEITMW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "zcK2P6yQINNOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "RbWRsTYQdroi"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "J2kSrxdQGigaset"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "5zZZdrFQIUNI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "nZpg6u3wDOOV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string/jumbo v0, "RQIDAQABONEPLUSCARDNEW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "i3GPvZLwASUS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "NsJCCyFwPHILIPS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "cNNrw5WQEBEN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string/jumbo v0, "UdcqV6aQLANMO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "PunKwZfwHISENSE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string/jumbo v0, "DAS9exiQQIKUBOX"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string/jumbo v0, "gO0o2CXwVIVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo v0, "kpGIJXywSAMSUNGFLOW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "DEaerxdwASUSCARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    :goto_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SECRETKEY"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RSAPRVKEY"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->self_key:Ljava/lang/String;

    sput-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "LENOVO"

    :goto_3
    sput-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "GOSMS"

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "SReminder"

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "OSYUN"

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "LENOVO2"

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "LEFROG"

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "BJYUNOS"

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "COOLPAD"

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "SAMOPERATOR"

    goto :goto_3

    :cond_c
    const-string/jumbo v0, "SAMBANK"

    goto :goto_3

    :cond_d
    const-string/jumbo v0, "SAMCLASSFIY"

    goto :goto_3

    :cond_e
    const-string/jumbo v0, "STARRYSKY"

    goto :goto_3

    :cond_f
    const-string/jumbo v0, "LIANLUOOS"

    goto :goto_3

    :cond_10
    const-string/jumbo v0, "SAMALL"

    goto :goto_3

    :cond_11
    const-string/jumbo v0, "HTXL"

    goto :goto_3

    :cond_12
    const-string/jumbo v0, "SAMALL"

    goto :goto_3

    :cond_13
    const-string/jumbo v0, "VNEW_LENOVO"

    goto :goto_3

    :cond_14
    const-string/jumbo v0, "XYPIAO"

    goto :goto_3

    :cond_15
    const-string/jumbo v0, "ZTE"

    goto :goto_3

    :cond_16
    const-string/jumbo v0, "ONE+"

    goto :goto_3

    :cond_17
    const-string/jumbo v0, "VNEW_ZTE"

    goto :goto_3

    :cond_18
    const-string/jumbo v0, "MAGIC"

    goto :goto_3

    :cond_19
    const-string/jumbo v0, "VNEW_STARRYSKY"

    goto :goto_3

    :cond_1a
    const-string/jumbo v0, "MEIZU"

    goto :goto_3

    :cond_1b
    const-string/jumbo v0, "DUOQU"

    goto :goto_3

    :cond_1c
    const-string/jumbo v0, "HUAWEI"

    goto :goto_3

    :cond_1d
    const-string/jumbo v0, "LETV"

    goto :goto_3

    :cond_1e
    const-string/jumbo v0, "ONE+CARD"

    goto :goto_3

    :cond_1f
    const-string/jumbo v0, "TOS"

    goto :goto_3

    :cond_20
    const-string/jumbo v0, "365"

    goto :goto_3

    :cond_21
    const-string/jumbo v0, "COOL"

    goto :goto_3

    :cond_22
    const-string/jumbo v0, "HUAWEICARD"

    goto :goto_3

    :cond_23
    const-string/jumbo v0, "GUAIWU"

    goto/16 :goto_3

    :cond_24
    const-string/jumbo v0, "SMARTISAN"

    goto/16 :goto_3

    :cond_25
    const-string/jumbo v0, "MEIZUPAY"

    goto/16 :goto_3

    :cond_26
    const-string/jumbo v0, "DAKELE"

    goto/16 :goto_3

    :cond_27
    const-string/jumbo v0, "GIONEE"

    goto/16 :goto_3

    :cond_28
    const-string/jumbo v0, "KINGSUN"

    goto/16 :goto_3

    :cond_29
    const-string/jumbo v0, "SUGAR"

    goto/16 :goto_3

    :cond_2a
    const-string/jumbo v0, "LEIDIANOS"

    goto/16 :goto_3

    :cond_2b
    const-string/jumbo v0, "XYTEST"

    goto/16 :goto_3

    :cond_2c
    const-string/jumbo v0, "TEST_T"

    goto/16 :goto_3

    :cond_2d
    const-string/jumbo v0, "KOOBEE"

    goto/16 :goto_3

    :cond_2e
    const-string/jumbo v0, "WENTAI"

    goto/16 :goto_3

    :cond_2f
    const-string/jumbo v0, "NUBIA"

    goto/16 :goto_3

    :cond_30
    const-string/jumbo v0, "GIONEECARD"

    goto/16 :goto_3

    :cond_31
    const-string/jumbo v0, "TCL"

    goto/16 :goto_3

    :cond_32
    const-string/jumbo v0, "TOS2"

    goto/16 :goto_3

    :cond_33
    const-string/jumbo v0, "YULONG_COOLPAD"

    goto/16 :goto_3

    :cond_34
    const-string/jumbo v0, "HCT"

    goto/16 :goto_3

    :cond_35
    const-string/jumbo v0, "KTOUCH"

    goto/16 :goto_3

    :cond_36
    const-string/jumbo v0, "PPTV"

    goto/16 :goto_3

    :cond_37
    const-string/jumbo v0, "TOSCARD"

    goto/16 :goto_3

    :cond_38
    const-string/jumbo v0, "TOSWATCH"

    goto/16 :goto_3

    :cond_39
    const-string/jumbo v0, "Smartisan"

    goto/16 :goto_3

    :cond_3a
    const-string/jumbo v0, "MEITU_PHONE"

    goto/16 :goto_3

    :cond_3b
    const-string/jumbo v0, "HUAWEIAND"

    goto/16 :goto_3

    :cond_3c
    const-string/jumbo v0, "HUAWEITMW"

    goto/16 :goto_3

    :cond_3d
    const-string/jumbo v0, "INNOS"

    goto/16 :goto_3

    :cond_3e
    const-string/jumbo v0, "droi"

    goto/16 :goto_3

    :cond_3f
    const-string/jumbo v0, "Gigaset"

    goto/16 :goto_3

    :cond_40
    const-string/jumbo v0, "IUNI"

    goto/16 :goto_3

    :cond_41
    const-string/jumbo v0, "DOOV"

    goto/16 :goto_3

    :cond_42
    const-string/jumbo v0, "ONEPLUSCARDNEW"

    goto/16 :goto_3

    :cond_43
    const-string/jumbo v0, "ASUS"

    goto/16 :goto_3

    :cond_44
    const-string/jumbo v0, "PHILIPS"

    goto/16 :goto_3

    :cond_45
    const-string/jumbo v0, "EBEN"

    goto/16 :goto_3

    :cond_46
    const-string/jumbo v0, "LANMO"

    goto/16 :goto_3

    :cond_47
    const-string/jumbo v0, "HISENSE"

    goto/16 :goto_3

    :cond_48
    const-string/jumbo v0, "QIKUBOX"

    goto/16 :goto_3

    :cond_49
    const-string/jumbo v0, "VIVO"

    goto/16 :goto_3

    :cond_4a
    const-string/jumbo v0, "SAMSUNGFLOW"

    goto/16 :goto_3

    :cond_4b
    const-string/jumbo v0, "ASUSCARD"

    goto/16 :goto_3

    :cond_4c
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u6e20\u9053"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
