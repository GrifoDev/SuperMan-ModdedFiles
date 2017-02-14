.class public Lcom/android/server/bridge/util/BridgeConstants;
.super Ljava/lang/Object;
.source "BridgeConstants.java"


# static fields
.field public static final ALL_PROVIDERS:Ljava/lang/String; = "ALL_PROVIDERS"

.field public static final BOOKMARKS_STR:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:I = 0x3

.field public static final CALENDAR_STR:Ljava/lang/String; = "Calendar"

.field public static final CALLLOG_STR:Ljava/lang/String; = "CallLog"

.field public static final CLIPBOARD_STR:Ljava/lang/String; = "Clipboard"

.field public static final CONTACTS:I = 0x2

.field public static final CONTACTS_DATA_TABLE:Ljava/lang/String; = "DATA_CONTACTS"

.field public static final CONTACTS_GROUPS_TABLE:Ljava/lang/String; = "GROUPS_CONTACTS"

.field public static final CONTACTS_PROVIDER:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_RAW_TABLE:Ljava/lang/String; = "RAW_CONTACTS"

.field public static final CONTACTS_STR:Ljava/lang/String; = "Contacts"

.field public static final FIRST_TIME_EXEC:Ljava/lang/String; = "FIRST_TIME"

.field public static final FIRST_TIME_PREF:Ljava/lang/String; = "FIRST_TIME_PREF"

.field public static final NOTIFICATIONS_STR:Ljava/lang/String; = "Notifications"

.field protected static PREF_NAME:Ljava/lang/String; = null

.field public static final PROVIDER_PREFS:Ljava/lang/String; = "PROVIDER_PREFS"

.field public static final REGISTERCALLBACK:I = 0x1

.field public static final SHORTCUTS_PROVIDER:Ljava/lang/String; = "RemoteShortcuts"

.field public static final SYNCER_PREFS:Ljava/lang/String; = "SYNCER_PREFS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DB_BRIDGE_INIT_SYNC"

    sput-object v0, Lcom/android/server/bridge/util/BridgeConstants;->PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
