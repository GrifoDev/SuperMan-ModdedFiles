.class public Lcom/android/incallui/operator/usa/jansky/JanskyContract;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineEntities;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$DeviceColumns;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$Devices;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$Accounts;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$AccountColumns;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineColumns;,
        Lcom/android/incallui/operator/usa/jansky/JanskyContract$CommonColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final LINES:I = 0x0

.field public static final LINE_ID:I = 0x1

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.nsds.provider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.nsds.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
