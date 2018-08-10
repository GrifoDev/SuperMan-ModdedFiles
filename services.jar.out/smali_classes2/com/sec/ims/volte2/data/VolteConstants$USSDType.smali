.class public Lcom/sec/ims/volte2/data/VolteConstants$USSDType;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USSDType"
.end annotation


# static fields
.field public static final SS_USSD_TYPE_USER_INITIATED:I = 0x1

.field public static final SS_USSD_TYPE_USER_RELEASE:I = 0x3

.field public static final SS_USSD_TYPE_USER_RES:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
