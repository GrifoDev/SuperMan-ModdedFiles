.class Lcom/android/server/bridge/operations/Apps;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final AUTHORITY_APPS:Ljava/lang/String; = "@com.sec.badge/apps"

.field public static final BADGECOUNT:Ljava/lang/String; = "badgecount"

.field public static final CLASSNAME:Ljava/lang/String; = "class"

.field public static final CONTENT:Ljava/lang/String; = "content://"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PACKAGENAME:Ljava/lang/String; = "package"

.field public static final SEPARATOR:Ljava/lang/String; = "|"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/Apps;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
