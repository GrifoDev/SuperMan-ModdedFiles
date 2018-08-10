.class public Landroid/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchIndexablesContract$BaseColumns;,
        Landroid/provider/SearchIndexablesContract$NonIndexableKey;,
        Landroid/provider/SearchIndexablesContract$RawData;,
        Landroid/provider/SearchIndexablesContract$XmlResource;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RAW_PAYLOAD:I = 0xf

.field public static final COLUMN_INDEX_RAW_PAYLOAD_TYPE:I = 0xe

.field public static final COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field private static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rank"

    aput-object v1, v0, v3

    const-string/jumbo v1, "xmlResId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "className"

    aput-object v1, v0, v5

    const-string/jumbo v1, "iconResId"

    aput-object v1, v0, v6

    const-string/jumbo v1, "intentAction"

    aput-object v1, v0, v7

    const-string/jumbo v1, "intentTargetPackage"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "intentTargetClass"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rank"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "summaryOn"

    aput-object v1, v0, v5

    const-string/jumbo v1, "summaryOff"

    aput-object v1, v0, v6

    const-string/jumbo v1, "entries"

    aput-object v1, v0, v7

    const-string/jumbo v1, "keywords"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "screenTitle"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "className"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "iconResId"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "intentAction"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "intentTargetPackage"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "intentTargetClass"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "key"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_id"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "payload_type"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "payload"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
