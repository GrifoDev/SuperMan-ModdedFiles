.class public Lcom/sec/ims/scab/CABIntent$Extras;
.super Ljava/lang/Object;
.source "CABIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extras"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "sync_action"

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final NOTIFY_ID:Ljava/lang/String; = "notify_id"

.field public static final SUCCEED:Ljava/lang/String; = "succeed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
