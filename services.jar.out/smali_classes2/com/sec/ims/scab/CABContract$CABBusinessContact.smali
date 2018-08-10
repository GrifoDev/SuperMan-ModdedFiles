.class public final Lcom/sec/ims/scab/CABContract$CABBusinessContact;
.super Ljava/lang/Object;
.source "CABContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CABBusinessContact"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FAMILY_NAME:Ljava/lang/String; = "family_name"

.field public static final GIVEN_NAME:Ljava/lang/String; = "given_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field public static final MSISDN:Ljava/lang/String; = "msisdn"

.field public static final NOTIFY_ID:Ljava/lang/String; = "notify_id"

.field public static final PREFIX:Ljava/lang/String; = "prefix"

.field public static final SUFFIX:Ljava/lang/String; = "suffix"

.field public static final SYNC_ACTION:Ljava/lang/String; = "sync_action"

.field public static final SYNC_COMPLETE:Ljava/lang/String; = "sync_complete"

.field public static final XDM_CONTACT_ID:Ljava/lang/String; = "xdm_contact_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "bscontacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContact;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBusinessContactsUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContact;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
