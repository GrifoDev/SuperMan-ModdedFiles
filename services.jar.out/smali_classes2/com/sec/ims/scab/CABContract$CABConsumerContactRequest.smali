.class public final Lcom/sec/ims/scab/CABContract$CABConsumerContactRequest;
.super Ljava/lang/Object;
.source "CABContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CABConsumerContactRequest"
.end annotation


# static fields
.field public static final CLIENT_REQUEST_UID:Ljava/lang/String; = "client_uid"

.field public static final COMPLETE:Ljava/lang/String; = "complete"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final HIGH_RAW_CONTACT_ID:Ljava/lang/String; = "high_contact_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOW_RAW_CONTACT_ID:Ljava/lang/String; = "low_contact_id"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SYNC_ACTION:Ljava/lang/String; = "sync_action"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "crrequests"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract$CABConsumerContactRequest;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
