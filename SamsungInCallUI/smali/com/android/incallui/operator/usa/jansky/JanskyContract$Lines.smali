.class public final Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/operator/usa/jansky/JanskyContract$CommonColumns;
.implements Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lines"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_LINE_NAME:Ljava/lang/String; = "lineName"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDevicesUri(J)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "devices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLineUri(J)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
