.class public Lcom/sec/ims/IMSParameter$CALL_DIRECTION;
.super Ljava/lang/Object;
.source "IMSParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CALL_DIRECTION"
.end annotation


# static fields
.field public static final CALL_DIRECTION_MO:I = 0x0

.field public static final CALL_DIRECTION_MT:I = 0x1

.field public static final CALL_DIRECTION_PULLED_MO:I = 0x2

.field public static final CALL_DIRECTION_PULLED_MT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
