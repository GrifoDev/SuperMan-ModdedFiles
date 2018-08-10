.class public Lcom/sec/ims/volte2/data/VolteConstants$ParticipantState;
.super Ljava/lang/Object;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantState"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x2

.field public static final ALERTING:I = 0x5

.field public static final INVALID:I = 0x0

.field public static final INVITING:I = 0x1

.field public static final MAX:I = 0x7

.field public static final NON_ACTIVE:I = 0x4

.field public static final ONHOLD:I = 0x6

.field public static final REMOVING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
