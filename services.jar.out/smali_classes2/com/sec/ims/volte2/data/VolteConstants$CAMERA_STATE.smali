.class public Lcom/sec/ims/volte2/data/VolteConstants$CAMERA_STATE;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAMERA_STATE"
.end annotation


# static fields
.field public static final READY:I = 0x0

.field public static final START_FAIL:I = 0x2

.field public static final START_SUCCESS:I = 0x1

.field public static final STOP_FAIL:I = 0x4

.field public static final STOP_SUCCESS:I = 0x3

.field public static final SWITCH_FAIL:I = 0x6

.field public static final SWITCH_SUCCESS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
