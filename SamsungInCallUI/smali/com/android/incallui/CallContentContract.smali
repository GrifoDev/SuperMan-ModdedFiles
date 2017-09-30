.class public Lcom/android/incallui/CallContentContract;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.vodafone.callplus.provider"

.field public static final CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

.field public static final CALLCONTENT_TABLE_NAME:Ljava/lang/String; = "callcontent"

.field public static final COMPOSER_DATA:[Ljava/lang/String;

.field public static final C_BACKGROUND:Ljava/lang/String; = "c_background"

.field public static final C_BACKGROUND_INDEX:I = 0x6

.field public static final C_IMPORTANCE:Ljava/lang/String; = "c_importance"

.field public static final C_IMPORTANCE_INDEX:I = 0x3

.field public static final C_LOCATION:Ljava/lang/String; = "c_location"

.field public static final C_LOCATION_INDEX:I = 0x4

.field public static final C_LOCATION_MAP:Ljava/lang/String; = "c_location_map"

.field public static final C_LOCATION_MAP_INDEX:I = 0x5

.field public static final C_SUBJECT:Ljava/lang/String; = "c_subject"

.field public static final C_SUBJECT_INDEX:I = 0x7

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DIRECTION_INDEX:I = 0x1

.field public static final ID_INDEX:I = 0x0

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_INDEX:I = 0x2

.field public static final U_AUDIOCLIP:Ljava/lang/String; = "u_audioclip"

.field public static final U_AUDIOCLIP_INDEX:I = 0x8

.field public static final U_CALLREASON:Ljava/lang/String; = "u_callreason"

.field public static final U_CALLREASON_INDEX:I = 0x9

.field public static final WHERE_INCOMING:Ljava/lang/String; = "direction= 1"

.field public static final WHERE_OUTGOING:Ljava/lang/String; = "direction= 0"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.vodafone.callplus.provider/callcontent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c_importance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "c_location_map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "c_background"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "c_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "u_audioclip"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "u_callreason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
