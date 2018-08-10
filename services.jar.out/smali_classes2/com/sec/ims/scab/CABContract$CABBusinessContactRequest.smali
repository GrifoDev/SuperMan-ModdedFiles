.class public final Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;
.super Ljava/lang/Object;
.source "CABContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CABBusinessContactRequest"
.end annotation


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "complete"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final LINE_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SYNC_ACTION:Ljava/lang/String; = "sync_action"

.field public static final XDM_ACTION:Ljava/lang/String; = "xdm_action"

.field public static final XDM_CONTACT_ID:Ljava/lang/String; = "xdm_contact_id"

.field public static final XDM_CONTACT_POSITION:Ljava/lang/String; = "xdm_position"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "bsrequests"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildGetUnsyncedDownloadRequests()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pending"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
