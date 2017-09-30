.class public final Lcom/android/incallui/secrcs/RcsTransferConstants$Cs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsTransferConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cs"
.end annotation


# static fields
.field public static final ACTIVE_SESSIONS_URI:Landroid/net/Uri;

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "path"

.field public static final KEY_FILE_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final KEY_SESSION_DIRECTION:Ljava/lang/String; = "dir"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "id"

.field public static final KEY_SESSION_STATE:Ljava/lang/String; = "state"

.field public static final KEY_SESSION_TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.rcs.cs/active_sessions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
