.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_ACCESS_CONTROL_CLASS:Ljava/lang/String; = "gsm.sim.acc"

.field public static final PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.apn.sim.operator.numeric"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_CALL_DEFAULT_SIM_ID:Ljava/lang/String; = "persist.radio.calldefault.simid"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DATA_PREFER_SIM_ID:Ljava/lang/String; = "persist.sys.dataprefer.simid"

.field public static final PROPERTY_DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "persist.radio.default.sub"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_EONS_ENABLED:Ljava/lang/String; = "persist.eons.enabled"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "gsm.sim.cdmaoperator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_GSM:Ljava/lang/String; = "gsm.sim.gsmoperator.numeric"

.field public static final PROPERTY_ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INE911:Ljava/lang/String; = "ril.cdma.ine911"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LTE_ON:Ljava/lang/String; = "persist.radio.lteon"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MMS_TRANSACTION:Ljava/lang/String; = "mms.transaction"

.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.radio.multisim.config"

.field public static final PROPERTY_NET_MODE_GWL_GW:Ljava/lang/String; = "persist.radio.netmode.auto"

.field public static final PROPERTY_NET_MODE_USER_CHANGE:Ljava/lang/String; = "persist.radio.user.change"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_IDP_STRING:Ljava/lang/String; = "gsm.operator.idpstring"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_REAL:Ljava/lang/String; = "gsm.operator.iso-country.real"

.field public static final PROPERTY_OPERATOR_ISPSROAMING:Ljava/lang/String; = "gsm.operator.ispsroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_REAL:Ljava/lang/String; = "gsm.operator.numeric.real"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_PCO_VALUE_PERSIST:Ljava/lang/String; = "persist.radio.pcovalue"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_ACTIVE:Ljava/lang/String; = "gsm.sim.active"

.field public static final PROPERTY_SIM_ACTIVITY_DUAL:Ljava/lang/String; = "gsm.sim.activity.dual"

.field public static final PROPERTY_SIM_CARDNAME:Ljava/lang/String; = "gsm.sim.cardname"

.field public static final PROPERTY_SIM_COUNT:Ljava/lang/String; = "ro.telephony.sim.count"

.field public static final PROPERTY_SIM_SELNETWORK:Ljava/lang/String; = "gsm.sim.selectnetwork"

.field public static final PROPERTY_SIM_SIXMODE:Ljava/lang/String; = "gsm.sim.sixmode"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SIM_STATUS:Ljava/lang/String; = "gsm.sim.currentcardstatus"

.field public static final PROPERTY_SMS_GCF_MODE:Ljava/lang/String; = "ril.sms.gcf-mode"

.field public static final PROPERTY_SMS_REASSEMBLY:Ljava/lang/String; = "ril.sms.reassembly"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_TEST_ASSISTEDDIAL:Ljava/lang/String; = "telephony.test.assisteddial"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_VIDEOCALL_AUDIO_OUTPUT:Ljava/lang/String; = "persist.radio.call.audio.output"

.field public static final PROPERTY_VOICE_NETWORK_TYPE:Ljava/lang/String; = "gsm.voice.network.type"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"
