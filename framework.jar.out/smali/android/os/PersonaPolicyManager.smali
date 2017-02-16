.class public Landroid/os/PersonaPolicyManager;
.super Ljava/lang/Object;
.source "PersonaPolicyManager.java"


# static fields
.field public static final AIRCOMMAND:Ljava/lang/String; = "airCommand"

.field public static final AIRCOMMAND_DEFAULT:Z = true

.field public static final ALLSHARE:Ljava/lang/String; = "allShare"

.field public static final ALLSHARE_DEFAULT:Z = false

.field public static final BLOCKED_SHARING_COMP_COMMON:Ljava/lang/String; = "blockedcompcommon"

.field public static final BLOCKED_SHARING_COMP_FOR_OWNER:Ljava/lang/String; = "blockedcompknox"

.field public static final BLOCKED_SHARING_COMP_FOR_SECUREFOLDER:Ljava/lang/String; = "blockedcompsecurefolder"

.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CAMERA_MODE:Ljava/lang/String; = "cameraMode"

.field public static final CAMERA_MODE_DEFAULT:Z = false

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field private static final CLONE_TO_KNOX_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_IMPORT_EXPORT:Ljava/lang/String; = "contacts-import-export"

.field public static final CONTAINER_RESET:Ljava/lang/String; = "containerReset"

.field public static final CONTAINER_RESET_DEFAULT:Z = false

.field public static final CUSTOM_BADGEICON:Ljava/lang/String; = "customBadgeIcon"

.field public static final CUSTOM_BADGEICON_DEFAULT:Z = true

.field public static final CUSTOM_COLORIDENTIFICATION:Ljava/lang/String; = "customColorIdentification"

.field public static final CUSTOM_COLORIDENTIFICATION_DEFAULT:Z = true

.field public static final CUSTOM_PERSONAICON:Ljava/lang/String; = "customPersonaIcon"

.field public static final CUSTOM_PERSONAICON_DEFAULT:Z = true

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final DISABLE_SWITCHWIDGET:Ljava/lang/String; = "disableSwitchWidget"

.field public static final DISABLE_SWITCHWIDGET_DEFAULT:Z = false

.field public static final DLNA_DATATRANSFER:Ljava/lang/String; = "dlnaDataTransfer"

.field public static final DLNA_DATATRANSFER_DEFAULT:Z = false

.field public static final ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final ENCRYPTION_DEFAULT:Z = true

.field private static final EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_IN_COM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_AND_DELETE_FILES:Ljava/lang/String; = "exportAndDeleteFiles"

.field public static final EXPORT_AND_DELETE_FILES_DEFAULT:Z = false

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final EXPORT_FILES:Ljava/lang/String; = "exportFiles"

.field public static final EXPORT_FILES_DEFAULT:Z = false

.field public static final GEAR_SUPPORT:Ljava/lang/String; = "gearSupport"

.field public static final GEAR_SUPPORT_DEFAULT:Z = true

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final IMPORT_FILES:Ljava/lang/String; = "importFiles"

.field public static final IMPORT_FILES_DEFAULT:Z = true

.field public static final MODIFY_TIMEOUT:Ljava/lang/String; = "modifyTimeout"

.field public static final MODIFY_TIMEOUT_DEFAULT:Z = true

.field public static final MOVE_FILE_TO_CONTAINER:Ljava/lang/String; = "move-file-to-container"

.field public static final MOVE_FILE_TO_OWNER:Ljava/lang/String; = "move-file-to-owner"

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final PASSWORD_LOCK:Ljava/lang/String; = "passwordLock"

.field public static final PASSWORD_LOCK_DEFAULT:Z = true

.field public static final PENWINDOW:Ljava/lang/String; = "penWindow"

.field public static final PENWINDOW_DEFAULT:Z = true

.field public static final PRINT:Ljava/lang/String; = "print"

.field public static final PRINT_DEFAULT:Z = false

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final SCREEN_CAPTURE_DEFAULT:Z = false

.field public static final SECURE_KEYSTORE:Ljava/lang/String; = "secureKeystore"

.field public static final SECURE_KEYSTORE_DEFAULT:Z = true

.field private static final SETTINGS_FOR_COM:[Ljava/lang/String;

.field private static final SHARE_WITH_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field public static final SHORTCUT_CREATION:Ljava/lang/String; = "shortcutCreation"

.field public static final SHORTCUT_CREATION_DEFAULT:Z = true

.field public static final SMS:Ljava/lang/String; = "Sms"

.field public static final SWITCH_NOTIF:Ljava/lang/String; = "switchNotif"

.field public static final SWITCH_NOTIF_DEFAULT:Z = true

.field public static final SYNC_ALL_CONTACTS:Ljava/lang/String; = "all_contacts"

.field public static final SYNC_FAVOURITE_CONTACTS:Ljava/lang/String; = "fav_contacts"

.field private static TAG:Ljava/lang/String; = null

.field public static final UNIVERSAL_CALLER_ID:Ljava/lang/String; = "universalCallerId"

.field public static final UNIVERSAL_CALLER_ID_DEFAULT:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-string/jumbo v0, "PersonaPolicyManager"

    sput-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    .line 144
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.bluetooth"

    const-string/jumbo v3, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    const-string/jumbo v3, "com.tencent.mm.ui.tools.AddFavoriteUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.switcher"

    const-string/jumbo v3, "com.sec.knox.switcher.SwitchB2bActivityI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.switcher"

    const-string/jumbo v3, "com.sec.knox.switcher.SwitchB2bActivityII"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.switcher"

    const-string/jumbo v3, "com.sec.knox.switcher.SwitchAliasActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.switcher"

    const-string/jumbo v3, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.simplesharing"

    const-string/jumbo v3, "com.samsung.android.app.simplesharing.dialog.RelayActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.express"

    const-string/jumbo v3, "com.sec.enterprise.knox.express.WelcomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.express"

    const-string/jumbo v3, "com.sec.enterprise.knox.express.WelcomeActivityII"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.switcher.SwitchAliasActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.switcher.SwitchSfActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.knox.switcher"

    const-string/jumbo v3, "com.sec.knox.switcher.B2CShareViaActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.switcher.B2CShareViaActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    .line 166
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "enable_smart_capture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_keyboard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "fingerprint_used_samsungaccount"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "fingerprint_samsungaccount_confirmed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "fingerprint_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "iris_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sound_alive_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "k2hd_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tube_amp_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "intelligent_sleep_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "intelligent_rotation_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "all_sound_off"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "callsettings_answer_memo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "mono_audio_db"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "driving_mode_chaton_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_gridui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "flip_font_style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_low_battery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_bonding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hdmi_audio_output"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "cradle_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_sharing_cable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout_rollback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_sound_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_button_background"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_brightness_detail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_alarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_bluetooth_sco"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system_enforced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_DTMF"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_tts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_master"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_waiting_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_replace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_caps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_punctuate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "high_contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "font_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "talkback_power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "flash_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "easy_interaction"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_reminder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_negative"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_access_control"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_auto_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hover_zoom_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_test"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lcd_curtain"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ultrasonic_cane"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input_menu_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "date_format"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_saving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "blackgrey_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "data_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_adjust_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "button_key_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_light_pulse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_touches"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_speed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_panning_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pan_to_browse_image_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake_scan_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake_refresh_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_web_navigate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_note_swap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_item_move"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_wake_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_side_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_one_hand_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_peek"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_arc_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "camera_quick_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_all_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_web_page"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_contact_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_album_and_photo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_scroll_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn_single_photo_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn_internet_window"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn_now_playing_on_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn_bgm_on_lock_screen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_turn_note_page_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_motion_call_accept_auto_start_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_view_master_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_view_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_highlight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_show_up_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_full_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_pregress_bar_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_speed_dial_tip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "finger_air_view_sound_and_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_charing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_missed_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_voice_recording"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_incoming_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "any_screen_running"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hand_adaptable_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_dialer_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_samsungkeypad_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_calculator_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_pattern_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_visual_feedback_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "face_smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accelerometer_rotation_second"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "key_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "key_backlight_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_progress_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_speed_dial_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_air_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detect_mode_disabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy_text_suggestion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "direct_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hearing_aid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_pen_gesture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "voicecall_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "short_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "double_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "caller_id_to_show_KNOX"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "caller_id_to_show_KNOX II"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "caller_id_to_show_Secure Folder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string/jumbo v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "notification_sound_CONSTANT_PATH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "notification_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    const/16 v0, 0x12a

    new-array v0, v0, [Ljava/lang/String;

    .line 573
    const-string/jumbo v1, "wifi_ap_settings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 574
    const-string/jumbo v1, "nfc_android_beam_help"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 575
    const-string/jumbo v1, "android_beam_settings"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 576
    const-string/jumbo v1, "nfc_payment_settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 577
    const-string/jumbo v1, "toggle_airplane"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 578
    const-string/jumbo v1, "smart_bonding_settings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 579
    const-string/jumbo v1, "wfc_settings_holder_key"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 580
    const-string/jumbo v1, "volume_setting"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 581
    const-string/jumbo v1, "sound"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 582
    const-string/jumbo v1, "notifications"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 583
    const-string/jumbo v1, "sound_mode"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 584
    const-string/jumbo v1, "ringtone"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 585
    const-string/jumbo v1, "ds_ring_tone"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 586
    const-string/jumbo v1, "notification_sound"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 587
    const-string/jumbo v1, "touch_sounds"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 588
    const-string/jumbo v1, "dial_pad_tones"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 589
    const-string/jumbo v1, "screen_locking_sounds"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 590
    const-string/jumbo v1, "keyboard_sound"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 591
    const-string/jumbo v1, "notifications_sub_settings"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 592
    const-string/jumbo v1, "system_sounds"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 593
    const-string/jumbo v1, "mms_sound"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 594
    const-string/jumbo v1, "mms_sound_ds"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 595
    const-string/jumbo v1, "vibrations"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 596
    const-string/jumbo v1, "vibration_feedback_intensity"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 597
    const-string/jumbo v1, "phone_vibration"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 598
    const-string/jumbo v1, "vibrate_when_ringing"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 599
    const-string/jumbo v1, "vibrate_on_touch"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 600
    const-string/jumbo v1, "keyboard_vibration"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 601
    const-string/jumbo v1, "key_simple_led_indicator_settings"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 602
    const-string/jumbo v1, "secbrightness"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 603
    const-string/jumbo v1, "outdoor_mode"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 604
    const-string/jumbo v1, "font_preview"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 605
    const-string/jumbo v1, "screen_timeout"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 606
    const-string/jumbo v1, "smartscreen_stay"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 607
    const-string/jumbo v1, "pick_up_to_call_out_switch"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 608
    const-string/jumbo v1, "pick_up_switch"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 609
    const-string/jumbo v1, "merged_mute_or_pause_switch"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 610
    const-string/jumbo v1, "screen_pinning_settings"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 611
    const-string/jumbo v1, "show_password"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 612
    const-string/jumbo v1, "security_policy_updates"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 613
    const-string/jumbo v1, "manual_updates"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 614
    const-string/jumbo v1, "auto_policy_update"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 615
    const-string/jumbo v1, "use_wifi_only"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 616
    const-string/jumbo v1, "other_security_settings"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 617
    const-string/jumbo v1, "finger_scanner"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 618
    const-string/jumbo v1, "iris_settings"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 619
    const-string/jumbo v1, "set_visibility"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 620
    const-string/jumbo v1, "notification_icons_only"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 621
    const-string/jumbo v1, "registered_iris"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 622
    const-string/jumbo v1, "iris_manage_category"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 623
    const-string/jumbo v1, "key_privacy"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 624
    const-string/jumbo v1, "key_location"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 625
    const-string/jumbo v1, "location_e911"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 626
    const-string/jumbo v1, "location_mode"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 627
    const-string/jumbo v1, "improve_location"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 628
    const-string/jumbo v1, "permission_location"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 629
    const-string/jumbo v1, "managed_profile_location_category"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 630
    const-string/jumbo v1, "managed_profile_location_switch"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 631
    const-string/jumbo v1, "recent_location_requests"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 632
    const-string/jumbo v1, "location_services"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 633
    const-string/jumbo v1, "vision_preferences"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 634
    const-string/jumbo v1, "audio_preference_key"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 635
    const-string/jumbo v1, "mobility_preference_key"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 636
    const-string/jumbo v1, "categories_category"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 637
    const-string/jumbo v1, "moresettings_category"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 638
    const-string/jumbo v1, "direct_access"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 639
    const-string/jumbo v1, "direct_access_guide"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 640
    const-string/jumbo v1, "direct_access_category"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 641
    const-string/jumbo v1, "direct_accessibility"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 642
    const-string/jumbo v1, "direct_talkback"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 643
    const-string/jumbo v1, "direct_s_talkback"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 644
    const-string/jumbo v1, "direct_page_reader"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 645
    const-string/jumbo v1, "direct_magnifier"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 646
    const-string/jumbo v1, "direct_negative"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 647
    const-string/jumbo v1, "direct_greyscale"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 648
    const-string/jumbo v1, "direct_color_adjustment"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 649
    const-string/jumbo v1, "direct_accesscontrol"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 650
    const-string/jumbo v1, "toggle_easy_interaction_preference"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 651
    const-string/jumbo v1, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 652
    const-string/jumbo v1, "talkback_tutorial_preference"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 653
    const-string/jumbo v1, "lcd_curtain"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 654
    const-string/jumbo v1, "rapid_key_input"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 655
    const-string/jumbo v1, "toggle_speak_password_preference"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 656
    const-string/jumbo v1, "screen_magnification_preference_screen"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 657
    const-string/jumbo v1, "magnifier_preference_screen"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 658
    const-string/jumbo v1, "greyscale_mode"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 659
    const-string/jumbo v1, "high_contrast"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 660
    const-string/jumbo v1, "color_blind"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 661
    const-string/jumbo v1, "toggle_inversion_preference"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 662
    const-string/jumbo v1, "daltonizer_preference_screen"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 663
    const-string/jumbo v1, "enable_global_gesture_preference_screen"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 664
    const-string/jumbo v1, "tts_settings_preference"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 665
    const-string/jumbo v1, "tts_engine_preference_section"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 666
    const-string/jumbo v1, "tts_general_section"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 667
    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 668
    const-string/jumbo v1, "tts_play_example"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 669
    const-string/jumbo v1, "tts_status"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 670
    const-string/jumbo v1, "sound_detector_plus_preference"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 671
    const-string/jumbo v1, "flash_notification_key"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 672
    const-string/jumbo v1, "all_sound_off_key"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 673
    const-string/jumbo v1, "google_captioning_preference_screen"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 674
    const-string/jumbo v1, "standard"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 675
    const-string/jumbo v1, "captioning_locale"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 676
    const-string/jumbo v1, "captioning_font_size"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 677
    const-string/jumbo v1, "captioning_preset"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 678
    const-string/jumbo v1, "custom"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 679
    const-string/jumbo v1, "captioning_typeface"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 680
    const-string/jumbo v1, "captioning_foreground_color"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 681
    const-string/jumbo v1, "captioning_foreground_opacity"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 682
    const-string/jumbo v1, "captioning_edge_type"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 683
    const-string/jumbo v1, "captioning_edge_color"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 684
    const-string/jumbo v1, "captioning_background_color"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 685
    const-string/jumbo v1, "captioning_background_opacity"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 686
    const-string/jumbo v1, "captioning_window_color"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 687
    const-string/jumbo v1, "captioning_window_opacity"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 688
    const-string/jumbo v1, "mono_audio_key"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 689
    const-string/jumbo v1, "auto_haptic_key"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 690
    const-string/jumbo v1, "assistant_menu_preference"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 691
    const-string/jumbo v1, "air_wake_up"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 692
    const-string/jumbo v1, "select_long_press_timeout_preference"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 693
    const-string/jumbo v1, "menu_edit"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 694
    const-string/jumbo v1, "dominant_hand_side"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 695
    const-string/jumbo v1, "fmpad_size"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 696
    const-string/jumbo v1, "fmpointer_size"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 697
    const-string/jumbo v1, "fmpointer_speed"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 698
    const-string/jumbo v1, "magnifier_settings"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 699
    const-string/jumbo v1, "magnifier_size"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 700
    const-string/jumbo v1, "auto_time"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 701
    const-string/jumbo v1, "auto_zone"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 702
    const-string/jumbo v1, "date"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 703
    const-string/jumbo v1, "time"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 704
    const-string/jumbo v1, "timezone"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 705
    const-string/jumbo v1, "24 hour"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 706
    const-string/jumbo v1, "software_version"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 707
    const-string/jumbo v1, "hardware_version_spr"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    .line 708
    const-string/jumbo v1, "system_update_settings"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    .line 709
    const-string/jumbo v1, "software_update_settings"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    .line 710
    const-string/jumbo v1, "software_update_settings_no_subtree"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    .line 711
    const-string/jumbo v1, "system_update_settings_na_gsm"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    .line 712
    const-string/jumbo v1, "additional_system_update_settings"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    .line 713
    const-string/jumbo v1, "diagnostics_and_usage"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    .line 714
    const-string/jumbo v1, "icon_glossary"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    .line 715
    const-string/jumbo v1, "plmn_update_settings"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 716
    const-string/jumbo v1, "status_info"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    .line 717
    const-string/jumbo v1, "status_info_vzw"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    .line 718
    const-string/jumbo v1, "sim_card_status"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    .line 719
    const-string/jumbo v1, "ctc_epush"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    .line 720
    const-string/jumbo v1, "container"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    .line 721
    const-string/jumbo v1, "telespree_activation"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    .line 722
    const-string/jumbo v1, "service_information"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    .line 723
    const-string/jumbo v1, "ntc_approval"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    .line 724
    const-string/jumbo v1, "device_name"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    .line 725
    const-string/jumbo v1, "regulatory_info"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    .line 726
    const-string/jumbo v1, "device_feedback"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    .line 727
    const-string/jumbo v1, "device_model"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    .line 728
    const-string/jumbo v1, "software_info"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    .line 729
    const-string/jumbo v1, "firmware_version"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    .line 730
    const-string/jumbo v1, "security_patch"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    .line 731
    const-string/jumbo v1, "fcc_equipment_id"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    .line 732
    const-string/jumbo v1, "baseband_version"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    .line 733
    const-string/jumbo v1, "installed_variant_version"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    .line 734
    const-string/jumbo v1, "kernel_version"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    .line 735
    const-string/jumbo v1, "build_number"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    .line 736
    const-string/jumbo v1, "selinux_status"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    .line 737
    const-string/jumbo v1, "csb_value"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    .line 738
    const-string/jumbo v1, "hardware_version"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    .line 739
    const-string/jumbo v1, "country_certification_info"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    .line 740
    const-string/jumbo v1, "security_sw_version"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    .line 741
    const-string/jumbo v1, "knox_version"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    .line 742
    const-string/jumbo v1, "omc_version"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    .line 743
    const-string/jumbo v1, "sdm_config_version"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    .line 744
    const-string/jumbo v1, "battery_life"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    .line 745
    const-string/jumbo v1, "battery_level"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    .line 746
    const-string/jumbo v1, "battery_status"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    .line 747
    const-string/jumbo v1, "battery_info"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    .line 748
    const-string/jumbo v1, "fcc_id"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    .line 749
    const-string/jumbo v1, "rated_value"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    .line 750
    const-string/jumbo v1, "battery_capacity"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    .line 751
    const-string/jumbo v1, "customer_services"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    .line 752
    const-string/jumbo v1, "update"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    .line 753
    const-string/jumbo v1, "auto_update"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    .line 754
    const-string/jumbo v1, "device_info_software_update"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    .line 755
    const-string/jumbo v1, "device_info_software_update_auto_update"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    .line 756
    const-string/jumbo v1, "scheduled_update"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    .line 757
    const-string/jumbo v1, "wifi_only"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    .line 758
    const-string/jumbo v1, "update_prl"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    .line 759
    const-string/jumbo v1, "update_profile"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    .line 760
    const-string/jumbo v1, "uicc_unlock"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    .line 761
    const-string/jumbo v1, "copyright"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    .line 762
    const-string/jumbo v1, "license"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    .line 763
    const-string/jumbo v1, "terms"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    .line 764
    const-string/jumbo v1, "webview_license"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    .line 765
    const-string/jumbo v1, "wallpaper_attributions"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    .line 766
    const-string/jumbo v1, "samsung_legal"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    .line 767
    const-string/jumbo v1, "safetyinfomation"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    .line 768
    const-string/jumbo v1, "privacy_alert"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    .line 769
    const-string/jumbo v1, "divx_license_settings"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    .line 770
    const-string/jumbo v1, "ring_volume"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    .line 771
    const-string/jumbo v1, "media_volume"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    .line 772
    const-string/jumbo v1, "notification_volume"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    .line 773
    const-string/jumbo v1, "alarm_volume"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    .line 774
    const-string/jumbo v1, "system_volume"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    .line 775
    const-string/jumbo v1, "waiting_tone_volume"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    .line 776
    const-string/jumbo v1, "waiting_tone_volume_explanation"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    .line 777
    const-string/jumbo v1, "unlock_set_or_change"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    .line 778
    const-string/jumbo v1, "show_information"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    .line 779
    const-string/jumbo v1, "lock_screen_menu_notifications"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    .line 780
    const-string/jumbo v1, "secured_lock_settigns"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    .line 781
    const-string/jumbo v1, "swipe_lock_settings"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    .line 782
    const-string/jumbo v1, "use_screen_lock"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    .line 783
    const-string/jumbo v1, "advanced_security"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    .line 784
    const-string/jumbo v1, "security_category"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    .line 785
    const-string/jumbo v1, "sdEncpref"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    .line 787
    const-string/jumbo v1, "battery_usage_desc"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    .line 788
    const-string/jumbo v1, "powersaving"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    .line 789
    const-string/jumbo v1, "ultra_powersaving"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    .line 790
    const-string/jumbo v1, "display_battery_level"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    .line 791
    const-string/jumbo v1, "battery_history"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    .line 793
    const-string/jumbo v1, "support_web_signin"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    .line 794
    const-string/jumbo v1, "key_fingerprint_add"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    .line 795
    const-string/jumbo v1, "unlock_set_pattern"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    .line 796
    const-string/jumbo v1, "unlock_set_pin"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    .line 797
    const-string/jumbo v1, "unlock_set_password"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    .line 798
    const-string/jumbo v1, "fingerprint_category"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    .line 799
    const-string/jumbo v1, "key_fingerprint_item_1"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    .line 800
    const-string/jumbo v1, "key_fingerprint_item_2"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    .line 801
    const-string/jumbo v1, "key_fingerprint_item_3"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    .line 802
    const-string/jumbo v1, "key_fingerprint_item_4"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    .line 804
    const-string/jumbo v1, "mac_address"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    .line 805
    const-string/jumbo v1, "current_ip_address"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    .line 806
    const-string/jumbo v1, "frequency_band"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    .line 807
    const-string/jumbo v1, "notify_open_networks"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    .line 808
    const-string/jumbo v1, "sleep_policy"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    .line 809
    const-string/jumbo v1, "wifi_poor_network_detection"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    .line 810
    const-string/jumbo v1, "att_auto_connect"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    .line 811
    const-string/jumbo v1, "install_credentials"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    .line 812
    const-string/jumbo v1, "wifi_assistant"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    .line 813
    const-string/jumbo v1, "wifi_hs20_enable"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    .line 814
    const-string/jumbo v1, "wlan_notify_cmcc"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    .line 815
    const-string/jumbo v1, "wifi_connection_type"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    .line 816
    const-string/jumbo v1, "wifi_reset"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    .line 818
    const-string/jumbo v1, "storage_space"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    .line 819
    const-string/jumbo v1, "storage_used"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    .line 820
    const-string/jumbo v1, "change_storage_button"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    .line 821
    const-string/jumbo v1, "total_size"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    .line 822
    const-string/jumbo v1, "app_size"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    .line 823
    const-string/jumbo v1, "data_size"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    .line 824
    const-string/jumbo v1, "clear_data_button"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    .line 825
    const-string/jumbo v1, "cache_size"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    .line 826
    const-string/jumbo v1, "clear_cache_button"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    .line 828
    const-string/jumbo v1, "header_view"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    .line 829
    const-string/jumbo v1, "storage_settings"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    .line 830
    const-string/jumbo v1, "data_settings"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    .line 831
    const-string/jumbo v1, "permission_settings"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    .line 832
    const-string/jumbo v1, "notification_settings"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    .line 833
    const-string/jumbo v1, "preferred_settings"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    .line 834
    const-string/jumbo v1, "battery"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    .line 835
    const-string/jumbo v1, "memory"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    .line 837
    const-string/jumbo v1, "wifi_always_scanning"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    .line 838
    const-string/jumbo v1, "bluetooth_always_scanning"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    .line 839
    const-string/jumbo v1, "header_view"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    .line 840
    const-string/jumbo v1, "storage_settings"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    .line 841
    const-string/jumbo v1, "data_settings"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    .line 842
    const-string/jumbo v1, "permission_settings"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    .line 843
    const-string/jumbo v1, "notification_settings"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    .line 844
    const-string/jumbo v1, "preferred_settings"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    .line 845
    const-string/jumbo v1, "high_accuracy"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    .line 846
    const-string/jumbo v1, "battery_saving"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    .line 847
    const-string/jumbo v1, "sensors_only"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    .line 849
    const-string/jumbo v1, "ring_vibration"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    .line 850
    const-string/jumbo v1, "notification_vibration"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    .line 851
    const-string/jumbo v1, "system_vibration"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    .line 853
    const-string/jumbo v1, "health_safety"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    .line 854
    const-string/jumbo v1, "warranty"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    .line 855
    const-string/jumbo v1, "end_user_license_agreement"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    .line 857
    const-string/jumbo v1, "key_writing_buddy"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    .line 858
    const-string/jumbo v1, "key_spen_pointer_switch"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    .line 859
    const-string/jumbo v1, "loss_prevention_alert"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    .line 860
    const-string/jumbo v1, "key_additional_feedback_pen_sound"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    .line 861
    const-string/jumbo v1, "key_additional_feedback_pen_haptic"

    const/16 v2, 0x117

    aput-object v1, v0, v2

    .line 863
    const-string/jumbo v1, "rename_device"

    const/16 v2, 0x118

    aput-object v1, v0, v2

    .line 864
    const-string/jumbo v1, "unpair"

    const/16 v2, 0x119

    aput-object v1, v0, v2

    .line 865
    const-string/jumbo v1, "profile_container"

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    .line 866
    const-string/jumbo v1, "PAN"

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    .line 867
    const-string/jumbo v1, "profile_container"

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    .line 868
    const-string/jumbo v1, "HEADSET"

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    .line 869
    const-string/jumbo v1, "A2DP"

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    .line 870
    const-string/jumbo v1, "AVRCP_CONTROLLER"

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    .line 871
    const-string/jumbo v1, "PAN"

    const/16 v2, 0x120

    aput-object v1, v0, v2

    .line 872
    const-string/jumbo v1, "INPUT_DEVICE"

    const/16 v2, 0x121

    aput-object v1, v0, v2

    .line 873
    const-string/jumbo v1, "MAP"

    const/16 v2, 0x122

    aput-object v1, v0, v2

    .line 875
    const-string/jumbo v1, "wifi_settings"

    const/16 v2, 0x123

    aput-object v1, v0, v2

    .line 876
    const-string/jumbo v1, "wifi_calling_settings_open"

    const/16 v2, 0x124

    aput-object v1, v0, v2

    .line 877
    const-string/jumbo v1, "bluetooth_settings"

    const/16 v2, 0x125

    aput-object v1, v0, v2

    .line 878
    const-string/jumbo v1, "nfc_settings"

    const/16 v2, 0x126

    aput-object v1, v0, v2

    .line 879
    const-string/jumbo v1, "tethering_and_hotspot"

    const/16 v2, 0x127

    aput-object v1, v0, v2

    .line 880
    const-string/jumbo v1, "location_settings"

    const/16 v2, 0x128

    aput-object v1, v0, v2

    .line 881
    const-string/jumbo v1, "device_info_date_time_settings"

    const/16 v2, 0x129

    aput-object v1, v0, v2

    .line 572
    sput-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaPolicyManager;

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p2, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    .line 911
    iput-object p1, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    .line 909
    return-void
.end method

.method public static getCloneToKnoxSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 899
    return-void
.end method

.method public static getComSettings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    sget-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    return-object v0
.end method

.method private getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1578
    .local p1, "blockedComp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v1, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1580
    .local v2, "policy":Ljava/lang/String;
    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "comp":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1583
    .end local v0    # "comp":[Ljava/lang/String;
    .end local v2    # "policy":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getKnoxKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 893
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 890
    :cond_0
    return-void
.end method

.method public static getKnoxKeysToSecure(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 904
    return-void
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 1358
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1359
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1361
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, addLockOnImage() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_0
    return-object v3

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get addLockOnImage , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addSecureKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1634
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1636
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->addSecureKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addSystemKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1612
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1614
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->addSystemKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAirCommandEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAirCommandEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowAllShare(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1173
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowAllShare(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowContainerReset(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowContainerReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomBadgeIcon(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowCustomColorIdentification(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1059
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomColorIdentification(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomPersonaIcon(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDLNADataTransfer(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1116
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowDLNADataTransfer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1306
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowExportFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1287
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowImportFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1268
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowImportFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowPrint(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1135
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowPrint(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowShortCutCreation(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1097
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowShortCutCreation(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUniversalCallerId(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1249
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowUniversalCallerId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v1, 0x1

    return v1
.end method

.method public getCameraModeChangeEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 983
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getCameraModeChangeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v1, 0x0

    return v1
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1021
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getDisableSwitchWidgetOnLockScreen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v1, 0x0

    return v1
.end method

.method public getEncryptionStatus(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getEncryptionStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v1, 0x1

    return v1
.end method

.method public getExcludeComponentList(ZZ)Ljava/util/ArrayList;
    .locals 6
    .param p1, "fromKnox"    # Z
    .param p2, "isForSecureFolder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    sget-object v3, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    .line 1556
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_2

    .line 1557
    sget-object v5, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1562
    :goto_0
    if-eqz p2, :cond_1

    .line 1563
    iget-object v5, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v4

    .line 1564
    .local v4, "sfId":I
    const-string/jumbo v5, "blockedcompcommon"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1565
    .local v0, "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, v0}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1566
    :cond_0
    if-eqz p1, :cond_3

    .line 1567
    const-string/jumbo v5, "blockedcompsecurefolder"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1568
    .local v2, "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v2}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1574
    .end local v0    # "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sfId":I
    :cond_1
    :goto_1
    return-object v3

    .line 1559
    :cond_2
    sget-object v5, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1570
    .restart local v0    # "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "sfId":I
    :cond_3
    const-string/jumbo v5, "blockedcompknox"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1571
    .local v1, "blockedCompOwner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v1}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public getGearSupportEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1192
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getGearSupportEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v1, 0x1

    return v1
.end method

.method public getModifyLockScreenTimeout(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1154
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getModifyLockScreenTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v1, 0x1

    return v1
.end method

.method public getPasswordLockPolicy(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 926
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPasswordLockPolicy(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v1, 0x1

    return v1
.end method

.method public getPenWindowEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1211
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPenWindowEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v1, 0x1

    return v1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1372
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1375
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, getRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :goto_0
    return-object v3

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get getRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1396
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1399
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, getRCPDataPolicyForUser() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    return-object v3

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get getRCPDataPolicyForUser, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1411
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1414
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, getRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    return-object v3

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get getRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1530
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1532
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getSecureKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1600
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1602
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getSecureKeystoreEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 964
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeystoreEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v1, 0x1

    return v1
.end method

.method public getSwitchNotifEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSwitchNotifEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v1, 0x1

    return v1
.end method

.method public getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 1458
    const-string/jumbo v0, "all_contacts"

    return-object v0
.end method

.method public getSystemKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1588
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1590
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->getSystemKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public isBadgeRequired()Z
    .locals 3

    .prologue
    .line 1316
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequired()Z

    move-result v1

    return v1

    .line 1319
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, isBadgeRequired() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get isBadgeRequired , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1330
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1331
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1333
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, isBadgeRequiredFromOwner(packageName) is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get isBadgeRequiredFromOwner(packageName) , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1494
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1496
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1501
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMoveFilesToOwnerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1506
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1508
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1518
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToContainerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1525
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1482
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1484
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerReceivers()V
    .locals 3

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->registerReceivers()V

    .line 1342
    :goto_0
    return-void

    .line 1347
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, registerReceiversis not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get registerReceivers, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeSecureKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1645
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1647
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->removeSecureKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeSystemKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1623
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1625
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->removeSystemKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAirCommandEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1221
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAirCommandEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowAllShare(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1164
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowAllShare(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowContainerReset(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1069
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowContainerReset(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomBadgeIcon(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomBadgeIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomColorIdentification(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1050
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomColorIdentification(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomPersonaIcon(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1031
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomPersonaIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowDLNADataTransfer(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowDLNADataTransfer(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_0
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowExportAndDeleteFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportAndDeleteFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    :goto_0
    return-void

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowExportFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1278
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowImportFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1259
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowImportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowPrint(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1126
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowPrint(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowShortCutCreation(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1088
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowShortCutCreation(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowUniversalCallerId(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1240
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowUniversalCallerId(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :goto_0
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCameraModeChangeEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setCameraModeChangeEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1012
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setDisableSwitchWidgetOnLockScreen(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEncryptionStatus(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 936
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setEncryptionStatus(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGearSupportEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1183
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setGearSupportEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setModifyLockScreenTimeout(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1145
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setModifyLockScreenTimeout(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPasswordLockPolicy(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPasswordLockPolicy(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPenWindowEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1202
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPenWindowEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1425
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1426
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1428
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1439
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1442
    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaPolicyManager, setRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get setRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1542
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    .line 1544
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1549
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setSecureKeystoreEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 955
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSecureKeystoreEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSwitchNotifEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1464
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSwitchNotifEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    return-void

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSyncPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1451
    return-void
.end method
