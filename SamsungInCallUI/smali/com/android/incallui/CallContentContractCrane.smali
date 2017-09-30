.class public Lcom/android/incallui/CallContentContractCrane;
.super Ljava/lang/Object;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.crane.callcomposer.CallComposerProvider"

.field public static final CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSER_DATA:[Ljava/lang/String;

.field public static final CONTENT_PREFIX:Ljava/lang/String; = "content://"

.field public static final C_BACKGROUND:Ljava/lang/String; = "image"

.field public static final C_BACKGROUND_INDEX:I = 0x4

.field public static final C_IMPORTANCE:Ljava/lang/String; = "important"

.field public static final C_IMPORTANCE_INDEX:I = 0x0

.field public static final C_LOCATION:Ljava/lang/String; = "location"

.field public static final C_LOCATION_COORDINATE:Ljava/lang/String; = "location_coordinate"

.field public static final C_LOCATION_COORDINATE_INDEX:I = 0x5

.field public static final C_LOCATION_INDEX:I = 0x2

.field public static final C_LOCATION_MAP:Ljava/lang/String; = "location_map"

.field public static final C_LOCATION_MAP_INDEX:I = 0x3

.field public static final C_SUBJECT:Ljava/lang/String; = "subject"

.field public static final C_SUBJECT_INDEX:I = 0x1

.field public static final TABLE_CALLCOMPOSER:Ljava/lang/String; = "callcomposer"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.samsung.crane.callcomposer.CallComposerProvider/callcomposer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "important"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "location_map"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location_coordinate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
