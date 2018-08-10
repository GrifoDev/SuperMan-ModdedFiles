.class public Lcom/sec/ims/profile/Constants$ResultCode;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/profile/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCode"
.end annotation


# static fields
.field public static final ERROR_INPUT_WRONG:I = -0x14

.field public static final ERROR_NETWORK_NOT_AVAILABLE:I = -0x1e

.field public static final ERROR_SERVER_AUTHENTICATION_FAIL:I = -0x29

.field public static final ERROR_SERVER_FAIL:I = -0x28

.field public static final ERROR_SERVER_FORBIDDEN:I = -0x2a

.field public static final ERROR_SERVICE_FAIL:I = -0xa

.field public static final ERROR_SERVICE_NOT_AVAILABLE:I = -0xb

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
