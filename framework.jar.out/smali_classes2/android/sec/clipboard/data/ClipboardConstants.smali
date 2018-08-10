.class public Landroid/sec/clipboard/data/ClipboardConstants;
.super Ljava/lang/Object;
.source "ClipboardConstants.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "android.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "android.intent.action.SECONTAINER_REMOVED"

.field public static final ADD_ITEM:I = 0x1

.field public static final CAT_USERID_ADJUST_FACTOR:I = 0x3e8

.field public static final CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

.field public static final CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

.field public static final CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

.field public static final CLIPBOARD_DELETE_CLIPS_PATH:Ljava/lang/String; = "/data/clipboard/deletedClips.xml"

.field public static final CLIPBOARD_DRAGNDROP:Ljava/lang/String; = "clipboarddragNdrop"

.field public static final CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field public static final CLIPBOARD_ROOT_PATH_TEMP:Ljava/lang/String; = "/data/clipboard/temp/"

.field public static final CLIPBOARD_SECONTAINER_ROOT_PATH:Ljava/lang/String; = "/data/clipboard/secontainer"

.field public static final CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

.field public static final CLIPBOARD_SHARED_PATH:Ljava/lang/String; = "/shared"

.field public static final CLIPBOARD_TAG:Ljava/lang/String; = "ClipboardServiceEx"

.field public static DEBUG:Z = false

.field public static final DELETEALL_ITEM:I = 0x3

.field public static final DELETE_ACTION_ALL:I = 0x3

.field public static final DELETE_ACTION_CLIP:I = 0x2

.field public static final DELETE_ACTION_NONE:I = 0x1

.field public static final DELETE_ITEM:I = 0x2

.field public static final DUAL_MESSENGER_USERID_END:I = 0x63

.field public static final DUAL_MESSENGER_USERID_START:I = 0x5f

.field public static final FILE_VERSION:I = 0x1

.field public static final FORMAT_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final FORMAT_HTML_FLAGMENT:Ljava/lang/String; = "HTMLFlagment"

.field public static final FORMAT_INTENT:Ljava/lang/String; = "Intent"

.field public static final FORMAT_MULTIPLE_TYPE:Ljava/lang/String; = "MultipleType"

.field public static final FORMAT_MULTIPLE_URI:Ljava/lang/String; = "MultipleUri"

.field public static final FORMAT_TEXT:Ljava/lang/String; = "Text"

.field public static final FORMAT_URI:Ljava/lang/String; = "Uri"

.field public static final GENERIC_CATEGORY_END:I = 0x1f4

.field public static final GENERIC_CATEGORY_START:I = 0xc9

.field public static final GOOD_CATEGORY:I = 0x66

.field public static final HAS_KNOX_FEATURE:Z

.field public static final HTML_PREVIEW_IMAGE_NAME:Ljava/lang/String; = "previewhtmlclipboarditem"

.field public static INFO_DEBUG:Z = false

.field public static final KNOX_CLIPBOARD_DELETE_CLIPS_PATH:Ljava/lang/String; = "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

.field public static final LOG_LEN:I = 0x14

.field public static final MAX_DATA_COUNT:I = 0x14

.field public static final MAX_NUMBER_OF_USERS:I = 0x64

.field public static final MULTIWINDOW_DRAGNDROP:Ljava/lang/String; = "MultiWindow_DragDrop"

.field public static final MULTI_USERID_END:I = 0x63

.field public static final MULTI_USERID_START:I = 0xa

.field public static final PERSONA_CATEGORY_END:I = 0x4aa

.field public static final PERSONA_CATEGORY_START:I = 0x3f2

.field public static final PERSONA_USERID_END:I = 0xc2

.field public static final PERSONA_USERID_START:I = 0xa

.field public static final POLICY_ENABLED_FALSE:I = 0x0

.field public static final POLICY_ENABLED_TRUE:I = 0x1

.field public static final POLICY_NOT_SET:I = -0x1

.field public static final RCP_AUTHORITY:Ljava/lang/String; = "com.sec.knox.rcppolicyprovider"

.field public static final RCP_CONTENT_URI:Landroid/net/Uri;

.field public static final RCP_TABLE_NAME:Ljava/lang/String; = "RCP_DATA"

.field public static final RCP_URL:Ljava/lang/String; = "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

.field public static final SAFETY_STRING_LENGTH:I = 0x20000

.field public static final SHARED_PREF:Ljava/lang/String; = "pref"

.field public static final SUPPORT_KNOX:Z

.field public static final THUMBNAIL_SUFFIX:Ljava/lang/String; = "_thum.jpg"

.field public static final TIMESTAMP_GAP:J = 0x186a0L

.field public static final TIMESTAMP_INTERVAL:J = 0x278d00L

.field public static final USER_ADDED:Ljava/lang/String; = "ADDED"

.field public static final USER_REMOVED:Ljava/lang/String; = "REMOVED"

.field public static final USER_SWITCHED:Ljava/lang/String; = "SWITCHED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.config.knox"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    const-string/jumbo v0, "ro.config.knox"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
