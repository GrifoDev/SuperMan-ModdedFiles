.class public Lcom/sec/ims/IMSParameter$SMS;
.super Ljava/lang/Object;
.source "IMSParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMS"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "contenttype"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final REASON_CODE:Ljava/lang/String; = "reasoncode"

.field public static final RETRY_AFTER:Ljava/lang/String; = "retry_after"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
