.class public Lcom/sec/ims/configuration/DATA;
.super Ljava/lang/Object;
.source "DATA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/configuration/DATA$DM_FIELD_INDEX;,
        Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;,
        Lcom/sec/ims/configuration/DATA$DM_NODE;,
        Lcom/sec/ims/configuration/DATA$STORAGE_TYPE;,
        Lcom/sec/ims/configuration/DATA$URI;
    }
.end annotation


# static fields
.field public static DM_FIELD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Home_network_domain_name"

    invoke-direct {v1, v5, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "P-CSCF_Address"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Private_user_identity"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Public_user_identity_List/Public_user_identity_List_1/Public_user_identity"

    invoke-direct {v1, v4, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address"

    invoke-direct {v1, v7, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType"

    invoke-direct {v1, v8, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_AUDIO_BITRATE"

    const/4 v3, 0x6

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_AUDIO_BITRATE_WB"

    const/4 v3, 0x7

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SIP_SESSION_TIMER"

    const/16 v3, 0x8

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SMS_FORMAT"

    const/16 v3, 0x9

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "sms_over_ip_network_indication"

    const/16 v3, 0xa

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SMS_WRITE_UICC"

    const/16 v3, 0xb

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xb

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_T1"

    const/16 v3, 0xc

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xc

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_T2"

    const/16 v3, 0xd

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xd

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_T4"

    const/16 v3, 0xe

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xe

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TA"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xf

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TB"

    const/16 v3, 0x10

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x10

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TC"

    const/16 v3, 0x11

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x11

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TD"

    const/16 v3, 0x12

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x12

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TE"

    const/16 v3, 0x13

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x13

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TF"

    const/16 v3, 0x14

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x14

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TG"

    const/16 v3, 0x15

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x15

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TH"

    const/16 v3, 0x16

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x16

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TI"

    const/16 v3, 0x17

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x17

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TJ"

    const/16 v3, 0x18

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x18

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "Timer_TK"

    const/16 v3, 0x19

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x19

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "CAP_CACHE_EXP"

    const/16 v3, 0x1a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "CAP_POLL_INTERVAL"

    const/16 v3, 0x1b

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SRC_THROTTLE_PUBLISH"

    const/16 v3, 0x1c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SUBSCRIBE_MAX_ENTRY"

    const/16 v3, 0x1d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "LVC_BETA_SETTING"

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "EAB_SETTING"

    const/16 v3, 0x1f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AVAIL_CACHE_EXP"

    const/16 v3, 0x20

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x20

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PREF_CSCF_PORT"

    const/16 v3, 0x21

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x21

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "FQDN_FOR_PCSCF"

    const/16 v3, 0x22

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x22

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "POLL_LIST_SUB_EXP"

    const/16 v3, 0x23

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x23

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PUBLISH_TIMER"

    const/16 v3, 0x24

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x24

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PUBLISH_TIMER_EXTEND"

    const/16 v3, 0x25

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x25

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "GZIP_FLAG"

    const/16 v3, 0x26

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x26

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "timer_vzw"

    const/16 v3, 0x27

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x27

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "t_delay"

    const/16 v3, 0x28

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x28

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "IMS_TEST_MODE"

    const/16 v3, 0x29

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x29

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "MIN_SE"

    const/16 v3, 0x2a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DCN_NUMBER"

    const/16 v3, 0x2b

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "silent_redial"

    const/16 v3, 0x2c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "T_LTE_911_FAIL"

    const/16 v3, 0x2d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PUBLISH_ERR_RETRY_TIMER"

    const/16 v3, 0x2e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPEAKER_DEFAULT_VIDEO"

    const/16 v3, 0x2f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x2f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "RINGING_TIMER"

    const/16 v3, 0x30

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x30

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "RINGBACK_TIMER"

    const/16 v3, 0x31

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x31

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "RTP_RTCP_TIMER"

    const/16 v3, 0x32

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x32

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DOMAIN_PUI"

    const/16 v3, 0x33

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x33

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "URI_MEDIA_RSC_SERV_3WAY_CALL"

    const/16 v3, 0x34

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x34

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PHONE_CONTEXT_URI"

    const/16 v3, 0x35

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x35

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "CAP_DISCOVERY"

    const/16 v3, 0x36

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x36

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_WB"

    const/16 v3, 0x37

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x37

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SRC_AMR"

    const/16 v3, 0x38

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x38

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SRC_AMR_WB"

    const/16 v3, 0x39

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x39

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "HD_VOICE"

    const/16 v3, 0x3a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "UDP_KEEP_ALIVE"

    const/16 v3, 0x3b

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AUDIO_RTP_PORT_START"

    const/16 v3, 0x3c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AUDIO_RTP_PORT_END"

    const/16 v3, 0x3d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VIDEO_RTP_PORT_START"

    const/16 v3, 0x3e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VIDEO_RTP_PORT_END"

    const/16 v3, 0x3f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x3f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_WB_OCTET_ALIGNED"

    const/16 v3, 0x40

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x40

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_WB_BANDWITH_EFFICIENT"

    const/16 v3, 0x41

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x41

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_OCTET_ALIGNED"

    const/16 v3, 0x42

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x42

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "AMR_BANDWITH_EFFICIENT"

    const/16 v3, 0x43

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x43

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "H246_VGA"

    const/16 v3, 0x44

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x44

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "H246_QVGA"

    const/16 v3, 0x45

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x45

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DTMF_WB"

    const/16 v3, 0x46

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x46

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DTMF_NB"

    const/16 v3, 0x47

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x47

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOLTE_PREF_SERVICE_STATUS"

    const/16 v3, 0x48

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x48

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SMS_PSI"

    const/16 v3, 0x49

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x49

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "dm_app_id"

    const/16 v3, 0x4a

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "dm_user_disp_name"

    const/16 v3, 0x4b

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "ConRefs/ConRefs_1/ConRef"

    const/16 v3, 0x4c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PDP_CONTEXT_PREF"

    const/16 v3, 0x4d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "ICSI_List/ICSI_List_1/ICSI"

    const/16 v3, 0x4e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "ICSI_List/ICSI_List_1/ICSI_Resource_Allocation_Mode"

    const/16 v3, 0x4f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "RSC_ALLOC_MODE"

    const/16 v3, 0x50

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x50

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOICE_DOMAIN_PREF_EUTRAN"

    const/16 v3, 0x51

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x51

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOICE_DOMAIN_PREF_UTRAN"

    const/16 v3, 0x52

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x52

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "IMS_VOICE_TERMINATION"

    const/16 v3, 0x53

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x53

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "REG_RETRY_BASE_TIME"

    const/16 v3, 0x54

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x54

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "REG_RETRY_MAX_TIME"

    const/16 v3, 0x55

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x55

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PHONE_CONTEXT_PARAM"

    const/16 v3, 0x56

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x56

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PHONE_CONTEXT_PUID"

    const/16 v3, 0x57

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x57

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SS_DOMAIN_SETTING"

    const/16 v3, 0x58

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x58

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SS_CONTROL_PREF"

    const/16 v3, 0x59

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x59

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DM_POLLING_PERIOD"

    const/16 v3, 0x5a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "ICCID"

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "CONF_FACTORY_URI"

    const/16 v3, 0x5c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOLTE_ENABLED"

    const/16 v3, 0x5d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "LVC_ENABLED"

    const/16 v3, 0x5e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "presence"

    const/16 v3, 0x5f

    invoke-direct {v1, v3, v7, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x5f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "mmtel"

    const/16 v3, 0x60

    invoke-direct {v1, v3, v7, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x60

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "mmtel-video"

    const/16 v3, 0x61

    invoke-direct {v1, v3, v7, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x61

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "USSD_CONTROL_PREF"

    const/16 v3, 0x62

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x62

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "EMERGENCY_CONTROL_PREF"

    const/16 v3, 0x63

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x63

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "UT_PDN"

    const/16 v3, 0x64

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x64

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "UT_APN_NAME"

    const/16 v3, 0x65

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x65

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOLTE_DOMAIN_UI_SHOW"

    const/16 v3, 0x66

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x66

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SMS_DOMAIN_UI_SHOW"

    const/16 v3, 0x67

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x67

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "UT_APN_SETTING_UI_SHOW"

    const/16 v3, 0x68

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x68

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "CONF_FACTORY_URI_SHOW"

    const/16 v3, 0x69

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x69

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "tvolte_hys_timer"

    const/16 v3, 0x6a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "PIP"

    const/16 v3, 0x6b

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "H264_L_VGA"

    const/16 v3, 0x6c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x6d

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "EPDG_ENABLED"

    const/16 v3, 0x6e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "EHRPD_ENABLED"

    const/16 v3, 0x6f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x6f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SS_CSFB_WITH_IMSERROR"

    const/16 v3, 0x70

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x70

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "IMS_ENABLED"

    const/16 v3, 0x71

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x71

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "vzw_eab_publish_fail"

    const/16 v3, 0x72

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x72

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VZW_EAB_MENU_SHOW"

    const/16 v3, 0x73

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x73

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "IPSEC_ENABLED"

    const/16 v3, 0x74

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x74

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "LVC_SUPPORTED"

    const/16 v3, 0x75

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x75

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x76

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x76

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x77

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x77

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "RCS"

    const/16 v3, 0x78

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x78

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VOLTE_SUPPORTED"

    const/16 v3, 0x79

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x79

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x7a

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x7b

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "root/application/1/services/IR94VideoAuth"

    const/16 v3, 0x7c

    invoke-direct {v1, v3, v8, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "TWWAN_911_FAIL_TIMER"

    const/16 v3, 0x7d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "TWLAN_911_SEARCHFAIL_TIMER"

    const/16 v3, 0x7e

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "TWLAN_911_CALLFAIL_TIMER"

    const/16 v3, 0x7f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x7f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VCE_CONFIG"

    const/16 v3, 0x80

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x80

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "EVS_PRIMARY"

    const/16 v3, 0x81

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x81

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEFAULT_BANDWIDTH"

    const/16 v3, 0x82

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x82

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEFAULT_BIT_RATE"

    const/16 v3, 0x83

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x83

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "H263_QCIF"

    const/16 v3, 0x84

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x84

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VWF_ENABLED"

    const/16 v3, 0x85

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x85

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x86

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x86

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x87

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x87

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x88

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x88

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x89

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x89

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x8a

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x8b

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x8c

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x8d

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x8e

    invoke-direct {v1, v3, v6, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PUID1"

    const/16 v3, 0x8f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PUID2"

    const/16 v3, 0x90

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x90

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PUID3"

    const/16 v3, 0x91

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x91

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PUID4"

    const/16 v3, 0x92

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x92

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PUID5"

    const/16 v3, 0x93

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x93

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_ALPHA_ID"

    const/16 v3, 0x94

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x94

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PARAM_IND"

    const/16 v3, 0x95

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x95

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_TPDA"

    const/16 v3, 0x96

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x96

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_TPSCA"

    const/16 v3, 0x97

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x97

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_TPPID"

    const/16 v3, 0x98

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x98

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_TPDCS"

    const/16 v3, 0x99

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x99

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_TPVP"

    const/16 v3, 0x9a

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_PCSCF_ADDR_TYPE"

    const/16 v3, 0x9b

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9b

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "SPR_IMS_NVISIM"

    const/16 v3, 0x9c

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9c

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "VZW_TIMS_TIMER"

    const/16 v3, 0x9d

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9d

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "root/vers/version"

    const/16 v3, 0x9e

    invoke-direct {v1, v3, v8, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9e

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const-string/jumbo v2, "H265_720P"

    const/16 v3, 0x9f

    invoke-direct {v1, v3, v5, v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9f

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
