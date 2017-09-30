.class public Lcom/android/incallui/smartcall/SmartCallContract;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcall/SmartCallContract$Report;,
        Lcom/android/incallui/smartcall/SmartCallContract$Call;,
        Lcom/android/incallui/smartcall/SmartCallContract$ImageCache;,
        Lcom/android/incallui/smartcall/SmartCallContract$Caller;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.smartcallprovider.directory.provider"

.field public static final CALLER_INFO_URI:Landroid/net/Uri;

.field static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.samsung.android.smartcallprovider.directory.provider/"

.field static final CONTENT_CALL:Ljava/lang/String; = "/call"

.field static final CONTENT_CALLER_INFO:Ljava/lang/String; = "callerInfo"

.field static final CONTENT_IMAGE_CACHE:Ljava/lang/String; = "imageCache"

.field public static final IMAGE_CACHE_URI:Landroid/net/Uri;

.field public static final SMART_CALL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.smartcallprovider.directory.provider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallContract;->SMART_CALL_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.smartcallprovider.directory.provider/callerInfo/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallContract;->CALLER_INFO_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.smartcallprovider.directory.provider/imageCache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallContract;->IMAGE_CACHE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
