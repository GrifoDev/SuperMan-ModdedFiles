.class public final Lcom/sec/ims/settings/ImsSettings$ProfileTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileTable"
.end annotation


# static fields
.field public static final ADD_HISTINFO:Ljava/lang/String; = "add_histinfo"

.field public static final ADD_PHONE_EXTENSION:Ljava/lang/String; = "add_phone_extension"

.field public static final ADD_PRES_LIST_DUMMY:Ljava/lang/String; = "add_pres_list_dummy"

.field public static final AMRNBBE_MAX_RED:Ljava/lang/String; = "amrnbbe_max_red"

.field public static final AMRNBBE_PAYLOAD:Ljava/lang/String; = "amrnbbe_payload"

.field public static final AMRNBOA_MAX_RED:Ljava/lang/String; = "amrnboa_max_red"

.field public static final AMRNBOA_PAYLOAD:Ljava/lang/String; = "amrnboa_payload"

.field public static final AMRNB_MODE:Ljava/lang/String; = "amrnb_mode"

.field public static final AMROPEN_PAYLOAD:Ljava/lang/String; = "amropen_payload"

.field public static final AMRWBBE_MAX_RED:Ljava/lang/String; = "amrwbbe_max_red"

.field public static final AMRWBBE_PAYLOAD:Ljava/lang/String; = "amrwbbe_payload"

.field public static final AMRWBOA_MAX_RED:Ljava/lang/String; = "amrwboa_max_red"

.field public static final AMRWBOA_PAYLOAD:Ljava/lang/String; = "amrwboa_payload"

.field public static final AMRWB_MODE:Ljava/lang/String; = "amrwb_mode"

.field public static final ANONYMOUS_FETCH:Ljava/lang/String; = "anonymous_fetch"

.field public static final AUDIO_AS:Ljava/lang/String; = "audio_as"

.field public static final AUDIO_AVPF:Ljava/lang/String; = "audio_avpf"

.field public static final AUDIO_CAPABILITIES:Ljava/lang/String; = "audio_capabilities"

.field public static final AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field public static final AUDIO_CODEC_MODE:Ljava/lang/String; = "audio_codec_mode"

.field public static final AUDIO_PORT_END:Ljava/lang/String; = "audio_port_end"

.field public static final AUDIO_PORT_START:Ljava/lang/String; = "audio_port_start"

.field public static final AUDIO_RR:Ljava/lang/String; = "audio_rr"

.field public static final AUDIO_RS:Ljava/lang/String; = "audio_rs"

.field public static final AUDIO_RTCPXR:Ljava/lang/String; = "audio_rtcpxr"

.field public static final AUDIO_SRTP:Ljava/lang/String; = "audio_srtp"

.field public static final AUDIO_VIDEO_TX:Ljava/lang/String; = "audio_video_tx"

.field public static final AUTHNAME:Ljava/lang/String; = "authname"

.field public static final AUTH_ALGO:Ljava/lang/String; = "auth_algo"

.field public static final AVAIL_CACHE_EXP:Ljava/lang/String; = "avail_cache_exp"

.field public static final BAD_EVENT_EXPIRY:Ljava/lang/String; = "bad_event_expiry"

.field public static final BITRATE:Ljava/lang/String; = "bitrate"

.field public static final CAP_CACHE_EXP:Ljava/lang/String; = "cap_cache_exp"

.field public static final CAP_DISCOVERY:Ljava/lang/String; = "cap_discovery"

.field public static final CAP_POLL_INTERVAL:Ljava/lang/String; = "cap_poll_interval"

.field public static final CLOSED_GROUP_CHAT:Ljava/lang/String; = "closed_group_chat"

.field public static final CONFERENCE_DIALOG_TYPE:Ljava/lang/String; = "conference_dialog_type"

.field public static final CONFERENCE_REFER_URI_ASSERTED:Ljava/lang/String; = "conference_referuri_asserted"

.field public static final CONFERENCE_REFER_URI_TYPE:Ljava/lang/String; = "conference_referuri_type"

.field public static final CONFERENCE_SUBSCRIBE:Ljava/lang/String; = "conference_subscribe"

.field public static final CONFERENCE_URI:Ljava/lang/String; = "conference_uri"

.field public static final CONFERENCE_USE_ANONYMOUS_UPDATE:Ljava/lang/String; = "conference_use_anonymous_update"

.field public static final CONFIG_VERSION_MARK:Ljava/lang/String; = "config_version_mark"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_CODECS:Ljava/lang/String; = "custom_codecs"

.field public static final DBR_TIMER:Ljava/lang/String; = "dbr_timer"

.field public static final DEREG_TIMEOUT:Ljava/lang/String; = "dereg_timeout"

.field public static final DISPLAY_FORMAT:Ljava/lang/String; = "display_format"

.field public static final DISPLAY_FORMATHEVC:Ljava/lang/String; = "display_format_hevc"

.field public static final DISPLAY_FPS_BITRATE:Ljava/lang/String; = "display_fps_bitrate"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final DTMF_CODEC_MODE:Ljava/lang/String; = "dtmf_codec_mode"

.field public static final DTMF_MODE:Ljava/lang/String; = "dtmf_mode"

.field public static final DTMF_NB_PAYLOAD:Ljava/lang/String; = "dtmf_nb_payload"

.field public static final DTMF_WB_PAYLOAD:Ljava/lang/String; = "dtmf_wb_payload"

.field public static final EARLY_MEDIA_RTP_TIMEOUT_TIMER:Ljava/lang/String; = "early_media_rtp_timeout_timer"

.field public static final EMERGENCY_SUPPORT:Ljava/lang/String; = "emergency_support"

.field public static final EMM:Ljava/lang/String; = "emm"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final ENABLE_AV_SYNC:Ljava/lang/String; = "enable_av_sync"

.field public static final ENABLE_BWM:Ljava/lang/String; = "enable_bwm"

.field public static final ENABLE_BWM_DEFAULT:Ljava/lang/String; = "enable_bwm_default"

.field public static final ENABLE_CP_AUDIO_PATH:Ljava/lang/String; = "enable_cp_audio_path"

.field public static final ENABLE_EVS_CODEC:Ljava/lang/String; = "enable_evs_codec"

.field public static final ENABLE_G711:Ljava/lang/String; = "enable_g711"

.field public static final ENABLE_GRUU:Ljava/lang/String; = "enable_gruu"

.field public static final ENABLE_GZIP:Ljava/lang/String; = "enable_gzip"

.field public static final ENABLE_MWI:Ljava/lang/String; = "enable_mwi"

.field public static final ENABLE_RTCP_ON_ACTIVATE_CALL:Ljava/lang/String; = "enable_rtcp_on_active_call"

.field public static final ENABLE_SCR:Ljava/lang/String; = "enable_scr"

.field public static final ENC_ALGO:Ljava/lang/String; = "enc_algo"

.field public static final EVS_2ND_PAYLOAD:Ljava/lang/String; = "evs_2nd_payload"

.field public static final EVS_BANDWIDTH_RECEIVE:Ljava/lang/String; = "evs_bandwidth_receive"

.field public static final EVS_BANDWIDTH_SEND:Ljava/lang/String; = "evs_bandwidth_send"

.field public static final EVS_BIT_RATE_RECEIVE:Ljava/lang/String; = "evs_bit_rate_receive"

.field public static final EVS_BIT_RATE_SEND:Ljava/lang/String; = "evs_bit_rate_send"

.field public static final EVS_CHANNEL_AWARE_RECEIVE:Ljava/lang/String; = "evs_channel_aware_receive"

.field public static final EVS_CHANNEL_RECV:Ljava/lang/String; = "evs_channel_recv"

.field public static final EVS_CHANNEL_SEND:Ljava/lang/String; = "evs_channel_send"

.field public static final EVS_CODEC_MODE_REQUEST:Ljava/lang/String; = "evs_codec_mode_request"

.field public static final EVS_DEFAULT_BANDWIDTH:Ljava/lang/String; = "evs_default_bandwidth"

.field public static final EVS_DEFAULT_BITRATE:Ljava/lang/String; = "evs_default_bitrate"

.field public static final EVS_DISCONTINUOUS_TRANSMISSION:Ljava/lang/String; = "evs_discontinuous_transmission"

.field public static final EVS_DTX_RECV:Ljava/lang/String; = "evs_dtx_recv"

.field public static final EVS_HEADER_FULL:Ljava/lang/String; = "evs_header_full"

.field public static final EVS_MAX_RED:Ljava/lang/String; = "evs_max_red"

.field public static final EVS_MODE_SWITCH:Ljava/lang/String; = "evs_mode_switch"

.field public static final EVS_PAYLOAD:Ljava/lang/String; = "evs_payload"

.field public static final EXPIRE_HEADER:Ljava/lang/String; = "expire_header"

.field public static final EXTENDED_PUBLISH_TIMER:Ljava/lang/String; = "extended_publish_timer"

.field public static final EXTERNAL_GTTY:Ljava/lang/String; = "external_gtty"

.field public static final FRAMERATE:Ljava/lang/String; = "framerate"

.field public static final H263_QCIF_PAYLOAD:Ljava/lang/String; = "h263_qcif_payload"

.field public static final H264_720pL_PAYLOAD:Ljava/lang/String; = "h264_720pl_payload"

.field public static final H264_720p_PAYLOAD:Ljava/lang/String; = "h264_720p_payload"

.field public static final H264_CIFL_PAYLOAD:Ljava/lang/String; = "h264_cifl_payload"

.field public static final H264_CIF_PAYLOAD:Ljava/lang/String; = "h264_cif_payload"

.field public static final H264_QVGAL_PAYLOAD:Ljava/lang/String; = "h264_qvgal_payload"

.field public static final H264_QVGA_PAYLOAD:Ljava/lang/String; = "h264_qvga_payload"

.field public static final H264_VGAL_PAYLOAD:Ljava/lang/String; = "h264_vgal_payload"

.field public static final H264_VGA_PAYLOAD:Ljava/lang/String; = "h264_vga_payload"

.field public static final H265_HD720_PAYLOAD:Ljava/lang/String; = "h265_hd720_payload"

.field public static final IGNORE_RTCP_TIMEOUT_ON_HOLD_CALL:Ljava/lang/String; = "ignore_rtcp_timeout_on_hold_call"

.field public static final IMPI:Ljava/lang/String; = "impi"

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final INVITE_TIME_OUT:Ljava/lang/String; = "invite_timeout"

.field public static final IPSEC:Ljava/lang/String; = "ipsec"

.field public static final IP_VERSION:Ljava/lang/String; = "ipver"

.field public static final IS_FULL_CODEC_OFFER_REQUIRED:Ljava/lang/String; = "is_full_codec_offer_required"

.field public static final IS_RCS_TELEPHONY_FEATURE_TAG_REQUIRED:Ljava/lang/String; = "is_rcs_feature_tag_required"

.field public static final LOG_RTPPACKETS_TO_FILE:Ljava/lang/String; = "log_rtppackets_to_file"

.field public static final MAXPTIME:Ljava/lang/String; = "maxptime"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MDMN_TYPE:Ljava/lang/String; = "mdmn_type"

.field public static final MIN_SE:Ljava/lang/String; = "min_se"

.field public static final MSS_SIZE:Ljava/lang/String; = "mss_size"

.field public static final MWI_SUBSCRIBE_EXPIRY:Ljava/lang/String; = "mwi_subscribe_expiry"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NEED_AUTOCONFIG:Ljava/lang/String; = "need_autoconfig"

.field public static final NEED_NAPTR_DNS:Ljava/lang/String; = "need_naptr_dns"

.field public static final NEED_OMADM_CONFIG:Ljava/lang/String; = "need_omadm_config"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final NETWORK_ENABLED:Ljava/lang/String; = "network_enabled"

.field public static final PACKETIZAION_MODE:Ljava/lang/String; = "packetization_mode"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PCSCF:Ljava/lang/String; = "pcscf"

.field public static final PCSCF_PREF:Ljava/lang/String; = "pcscf_pref"

.field public static final PDN:Ljava/lang/String; = "pdn"

.field public static final POLL_LIST_SUB_EXP:Ljava/lang/String; = "poll_list_sub_exp"

.field public static final PRECONDITION_INITIAL_SENDRECV:Ljava/lang/String; = "precondtion_initial_sendrecv"

.field public static final PRESENCE_LIST_MAX_ENTRIES:Ljava/lang/String; = "presence_list_max_entries"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PRIVACY_HEADER_RESTRICTED:Ljava/lang/String; = "privacy_header_restricted"

.field public static final PTIME:Ljava/lang/String; = "ptime"

.field public static final PUBLISH_ERR_RETRY_TIMER:Ljava/lang/String; = "publish_err_retry_timer"

.field public static final PUBLISH_EXPIRY:Ljava/lang/String; = "publish_expiry"

.field public static final PUBLISH_TIMER:Ljava/lang/String; = "publish_timer"

.field public static final PULLING_SERVER_URI:Ljava/lang/String; = "pulling_server_uri"

.field public static final RCS_PROFILE:Ljava/lang/String; = "rcs_profile"

.field public static final REGI_ALGO:Ljava/lang/String; = "regi_algo"

.field public static final REG_ENALBED:Ljava/lang/String; = "reg_enabled"

.field public static final REG_EXPIRES:Ljava/lang/String; = "reg_expires"

.field public static final REG_RETRY_BASE_TIME:Ljava/lang/String; = "reg_retry_base_time"

.field public static final REG_RETRY_MAX_TIME:Ljava/lang/String; = "reg_retry_max_time"

.field public static final REMOTE_URI_TYPE:Ljava/lang/String; = "remote_uri_type"

.field public static final REREGI_ON_RATCHANGE:Ljava/lang/String; = "reregi_on_ratchange"

.field public static final RINGBACK_TIMER:Ljava/lang/String; = "ringback_timer"

.field public static final RINGING_TIMER:Ljava/lang/String; = "ringing_timer"

.field public static final RPORT:Ljava/lang/String; = "rport"

.field public static final RTCP_TIMEOUT:Ljava/lang/String; = "rtcp_timeout"

.field public static final RTP_TIMEOUT:Ljava/lang/String; = "rtp_timeout"

.field public static final SCM_VERSION:Ljava/lang/String; = "scm_version"

.field public static final SECURE_CLIENT_PORT:Ljava/lang/String; = "secure_client_port"

.field public static final SECURE_SERVER_PORT:Ljava/lang/String; = "secure_server_port"

.field public static final SELF_PORT:Ljava/lang/String; = "self_port"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final SESSION_EXPIRES:Ljava/lang/String; = "session_expires"

.field public static final SESSION_REFRESHER:Ljava/lang/String; = "session_refresher"

.field public static final SESSION_REFRESH_METHOD:Ljava/lang/String; = "session_refresh_method"

.field public static final SET_DEFAULT_URI:Ljava/lang/String; = "set_default_uri"

.field public static final SIM_SLOT:Ljava/lang/String; = "simslot"

.field public static final SIP_COMPACT_HEADER:Ljava/lang/String; = "sip_compact_header"

.field public static final SIP_MOBILITY:Ljava/lang/String; = "sip_mobility"

.field public static final SIP_PORT:Ljava/lang/String; = "sip_port"

.field public static final SIP_TIMER_1:Ljava/lang/String; = "sip_timer_1"

.field public static final SIP_TIMER_2:Ljava/lang/String; = "sip_timer_2"

.field public static final SIP_TIMER_4:Ljava/lang/String; = "sip_timer_4"

.field public static final SIP_TIMER_A:Ljava/lang/String; = "sip_timer_a"

.field public static final SIP_TIMER_B:Ljava/lang/String; = "sip_timer_b"

.field public static final SIP_TIMER_C:Ljava/lang/String; = "sip_timer_c"

.field public static final SIP_TIMER_D:Ljava/lang/String; = "sip_timer_d"

.field public static final SIP_TIMER_E:Ljava/lang/String; = "sip_timer_e"

.field public static final SIP_TIMER_F:Ljava/lang/String; = "sip_timer_f"

.field public static final SIP_TIMER_G:Ljava/lang/String; = "sip_timer_g"

.field public static final SIP_TIMER_H:Ljava/lang/String; = "sip_timer_h"

.field public static final SIP_TIMER_I:Ljava/lang/String; = "sip_timer_i"

.field public static final SIP_TIMER_J:Ljava/lang/String; = "sip_timer_j"

.field public static final SIP_TIMER_K:Ljava/lang/String; = "sip_timer_k"

.field public static final SIP_URI_ONLY:Ljava/lang/String; = "sip_uri_only"

.field public static final SIP_USERAGENT:Ljava/lang/String; = "useragent"

.field public static final SMSC_SET:Ljava/lang/String; = "smsc_set"

.field public static final SRC_THROTTLE_PUBLISH:Ljava/lang/String; = "src_throttle_publish"

.field public static final SUBSCRIBER_TIMER:Ljava/lang/String; = "subscriber_timer"

.field public static final SUBSCRIBE_FOR_REG:Ljava/lang/String; = "subscribe_for_reg"

.field public static final SUBSCRIBE_LIST_SYNC_ENABLED:Ljava/lang/String; = "subscribe_list_sync_enabled"

.field public static final SUBSCRIBE_MAX_ENTRY:Ljava/lang/String; = "subscribe_max_entry"

.field public static final SUPPORTED_GEOLOCATION_PHASE:Ljava/lang/String; = "supported_geolocation_phase"

.field public static final SUPPORT_183_FOR_IR92V9_PRECONDITION:Ljava/lang/String; = "support_183_for_ir92v9_precondition"

.field public static final SUPPORT_3GPP_USSI:Ljava/lang/String; = "support_3gpp_ussi"

.field public static final SUPPORT_ECT:Ljava/lang/String; = "support_ect"

.field public static final SUPPORT_IMS_IN_ROAMING:Ljava/lang/String; = "support_ims_in_roaming"

.field public static final SUPPORT_INCOMING_HISTORY_INFO:Ljava/lang/String; = "support_incoming_history_info"

.field public static final SUPPORT_LTE_PREFERRED:Ljava/lang/String; = "support_lte_preferred"

.field public static final SUPPORT_MERGE_VIDEO_CONFERENCE:Ljava/lang/String; = "support_merge_video_conference"

.field public static final SUPPORT_ROAMING:Ljava/lang/String; = "support_roaming"

.field public static final SUPPORT_SPECIFIC_SALESCODE_ONLY:Ljava/lang/String; = "support_specific_salescode_only"

.field public static final SUPPORT_UPGRADE_VIDEO_CONFERENCE:Ljava/lang/String; = "support_upgrade_video_conference"

.field public static final TABLE_NAME:Ljava/lang/String; = "profile"

.field public static final TCPRST_UAC_ERRORCODE:Ljava/lang/String; = "tcprst_uac_errorcode"

.field public static final TCPRST_UAS_ERRORCODE:Ljava/lang/String; = "tcprst_uas_errorcode"

.field public static final TEXT_PORT:Ljava/lang/String; = "text_port"

.field public static final TIMER_100TRYING:Ljava/lang/String; = "timer_100trying"

.field public static final TRANSPORT:Ljava/lang/String; = "transport"

.field public static final TTY_TYPE:Ljava/lang/String; = "tty_type"

.field public static final USE_183_ON_PROGRESS_INCOMING:Ljava/lang/String; = "use_183_on_progress_incoming"

.field public static final USE_MSRP_BEARER:Ljava/lang/String; = "use_msrp_bearer"

.field public static final USE_PEM_HEADER:Ljava/lang/String; = "use_pem_header"

.field public static final USE_PRECONDITION:Ljava/lang/String; = "use_precondition"

.field public static final USE_PROVISIONAL_RESOPNSE_100REL:Ljava/lang/String; = "use_provisional_response_100rel"

.field public static final VIDEO_AS:Ljava/lang/String; = "video_as"

.field public static final VIDEO_AVPF:Ljava/lang/String; = "video_avpf"

.field public static final VIDEO_CAPABILITIES:Ljava/lang/String; = "video_capabilities"

.field public static final VIDEO_CODEC:Ljava/lang/String; = "video_codec"

.field public static final VIDEO_PORT_END:Ljava/lang/String; = "video_port_end"

.field public static final VIDEO_PORT_START:Ljava/lang/String; = "video_port_start"

.field public static final VIDEO_RR:Ljava/lang/String; = "video_rr"

.field public static final VIDEO_RS:Ljava/lang/String; = "video_rs"

.field public static final VIDEO_RTCPXR:Ljava/lang/String; = "video_rtcpxr"

.field public static final VIDEO_SRTP:Ljava/lang/String; = "video_srtp"

.field public static final WIFI_PRECONDITION_ENABLED:Ljava/lang/String; = "wifi_precondition_enabled"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.ims.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
