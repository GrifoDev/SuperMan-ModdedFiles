.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

.field public static final ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

.field public static final ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

.field public static final ACTION_CARRIER_SIGNAL_RESET:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

.field public static final ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD:Ljava/lang/String; = "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

.field public static final ACTION_CROSS_MAPPING:Ljava/lang/String; = "com.samsung.intent.action.ACTION_CROSS_MAPPING"

.field public static final ACTION_DATA_CALL_SETUP_RETRY:Ljava/lang/String; = "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_DATA_SELECTION_POPUP:Ljava/lang/String; = "android.intent.action.ACTION_DATA_SELECTION_POPUP"

.field public static final ACTION_DATA_SELECTION_POPUP_FOR_EUR:Ljava/lang/String; = "android.intent.action.ACTION_DATA_SELECTION_POPUP_FOR_EUR"

.field public static final ACTION_DATA_SELECTION_POPUP_PRESSED:Ljava/lang/String; = "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

.field public static final ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

.field public static final ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

.field public static final ACTION_IMS_ECMP_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ECMP_STATE_CHANGED"

.field public static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "android.intent.action.ACTION_MANAGED_ROAMING_IND"

.field public static final ACTION_MCC_SET_TIME:Ljava/lang/String; = "com.samsung.intent.action.MCC_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_NITZ_SET_TIME:Ljava/lang/String; = "com.samsung.intent.action.NITZ_SET_TIME"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_READ_MIN_AFTER_APP_READY:Ljava/lang/String; = "android.intent.action.MIN_VALUE_CHANGED"

.field public static final ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"

.field public static final ACTION_ROAMING_STATUS_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SET_RADIO_CAPABILITY_DONE:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

.field public static final ACTION_SET_RADIO_CAPABILITY_FAILED:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

.field public static final ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SUBINFO_CONTENT_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

.field public static final ACTION_SUBINFO_RECORD_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field public static final ACTION_SUBSCRIPTION_SET_UICC_RESULT:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

.field public static final ACTION_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final ACTION_TIME_DISP_SCHM_LAUNCH:Ljava/lang/String; = "com.samsung.intent.action.ACTION_TIME_DISP_SCHM_LAUNCH"

.field public static final ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC:Ljava/lang/String; = "com.samsung.intent.action.ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC"

.field public static final ACTION_TZ_RCMD_TIMEZONE_OF_CURR_MCC:Ljava/lang/String; = "com.samsung.intent.action.ACTION_TZ_RCMD_TIMEZONE_OF_CURR_MCC"

.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field public static final EXTRA_APN_PROTO_KEY:Ljava/lang/String; = "apnProto"

.field public static final EXTRA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final EXTRA_CROSS_MAPPING_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DATA_SPN:Ljava/lang/String; = "spnData"

.field public static final EXTRA_EFSPN:Ljava/lang/String; = "efspn"

.field public static final EXTRA_ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_NEW_SUB_STATE:Ljava/lang/String; = "newSubState"

.field public static final EXTRA_PCO_ID_KEY:Ljava/lang/String; = "pcoId"

.field public static final EXTRA_PCO_VALUE_KEY:Ljava/lang/String; = "pcoValue"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_RADIO_ACCESS_FAMILY:Ljava/lang/String; = "rafs"

.field public static final EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "rebroadcastOnUnlock"

.field public static final EXTRA_REDIRECTION_URL_KEY:Ljava/lang/String; = "redirectionUrl"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "operationResult"

.field public static final EXTRA_SHOW_EPDG:Ljava/lang/String; = "showEpdg"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
