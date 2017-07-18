.class public Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfoLog;
.super Ljava/lang/Object;
.source "GroupDeliveryInfoLog.java"


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.groupdeliveryinfo/groupdeliveryinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfoLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
