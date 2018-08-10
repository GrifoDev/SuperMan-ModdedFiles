.class public Lcom/sec/ims/volte2/data/VolteConstants$USSDStatus;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USSDStatus"
.end annotation


# static fields
.field public static final SS_USSD_ACTION_REQUIRE:I = 0x2

.field public static final SS_USSD_NOT_SUPPORT:I = 0x5

.field public static final SS_USSD_NO_ACTION_REQUIRE:I = 0x1

.field public static final SS_USSD_OTHER_CLIENT:I = 0x4

.field public static final SS_USSD_TERMINATED_BY_NET:I = 0x3

.field public static final SS_USSD_TIME_OUT:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
