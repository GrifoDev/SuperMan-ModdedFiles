.class public final Landroid/provider/DocumentsContract$Root;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Root"
.end annotation


# static fields
.field public static final COLUMN_AVAILABLE_BYTES:Ljava/lang/String; = "available_bytes"

.field public static final COLUMN_CAPACITY_BYTES:Ljava/lang/String; = "capacity_bytes"

.field public static final COLUMN_DOCUMENT_ID:Ljava/lang/String; = "document_id"

.field public static final COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_MIME_TYPES:Ljava/lang/String; = "mime_types"

.field public static final COLUMN_ROOT_ID:Ljava/lang/String; = "root_id"

.field public static final COLUMN_SUMMARY:Ljava/lang/String; = "summary"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final FLAG_ADVANCED:I = 0x20000

.field public static final FLAG_EMPTY:I = 0x10000

.field public static final FLAG_HAS_SETTINGS:I = 0x40000

.field public static final FLAG_LOCAL_ONLY:I = 0x2

.field public static final FLAG_REMOVABLE_SD:I = 0x80000

.field public static final FLAG_REMOVABLE_USB:I = 0x100000

.field public static final FLAG_SUPPORTS_CREATE:I = 0x1

.field public static final FLAG_SUPPORTS_EJECT:I = 0x20

.field public static final FLAG_SUPPORTS_IS_CHILD:I = 0x10

.field public static final FLAG_SUPPORTS_RECENTS:I = 0x4

.field public static final FLAG_SUPPORTS_SEARCH:I = 0x8

.field public static final MIME_TYPE_ITEM:Ljava/lang/String; = "vnd.android.document/root"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
