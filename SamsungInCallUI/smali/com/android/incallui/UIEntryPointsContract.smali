.class public Lcom/android/incallui/UIEntryPointsContract;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.vodafone.callplus.provider"

.field public static final COMPOSER_ACTION:Ljava/lang/String; = "composer_action"

.field public static final COMPOSER_ACTION_INDEX:I = 0x0

.field public static final COMPOSER_ICON:Ljava/lang/String; = "composer_icon"

.field public static final COMPOSER_ICON_INDEX:I = 0x1

.field public static final COMPOSER_URI:Ljava/lang/String; = "composer_uri"

.field public static final COMPOSER_URI_INDEX:I = 0x2

.field public static final SHARING_ACTION:Ljava/lang/String; = "sharing_action"

.field public static final SHARING_ACTION_INDEX:I = 0x0

.field public static final SHARING_ICON:Ljava/lang/String; = "sharing_icon"

.field public static final SHARING_ICON_INDEX:I = 0x1

.field public static final SHARING_URI:Ljava/lang/String; = "sharing_uri"

.field public static final SHARING_URI_INDEX:I = 0x2

.field public static final UI_ENTRY_POINTS_COMPOSER_COLUMNS:[Ljava/lang/String;

.field public static final UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

.field public static final UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

.field public static final UI_ENTRY_POINTS_TABLE_NAME:Ljava/lang/String; = "ui_entry_points"

.field public static final UI_ENTRY_POINTS_UNANSWERED_COLUMNS:[Ljava/lang/String;

.field public static final UNANSWERED_ACTION:Ljava/lang/String; = "unanswered_action"

.field public static final UNANSWERED_ACTION_INDEX:I = 0x0

.field public static final UNANSWERED_ICON:Ljava/lang/String; = "unanswered_icon"

.field public static final UNANSWERED_ICON_INDEX:I = 0x1

.field public static final UNANSWERED_URI:Ljava/lang/String; = "unanswered_uri"

.field public static final UNANSWERED_URI_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://com.vodafone.callplus.provider/ui_entry_points"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "composer_action"

    aput-object v1, v0, v2

    const-string v1, "composer_icon"

    aput-object v1, v0, v3

    const-string v1, "composer_uri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_COMPOSER_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "unanswered_action"

    aput-object v1, v0, v2

    const-string v1, "unanswered_icon"

    aput-object v1, v0, v3

    const-string v1, "unanswered_uri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_UNANSWERED_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sharing_action"

    aput-object v1, v0, v2

    const-string v1, "sharing_icon"

    aput-object v1, v0, v3

    const-string v1, "sharing_uri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
