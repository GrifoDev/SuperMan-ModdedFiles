.class public Lcom/sec/ims/ss/data/SSConfigConstants$CBType;
.super Ljava/lang/Object;
.source "SSConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/data/SSConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBType"
.end annotation


# static fields
.field public static final SS_BARR_TYPE_BAIC_bit:I = 0x8

.field public static final SS_BARR_TYPE_BAOC_bit:I = 0x1

.field public static final SS_BARR_TYPE_BIC_ROAM_bit:I = 0xa

.field public static final SS_BARR_TYPE_BOIC_NOT_HC_bit:I = 0x4

.field public static final SS_BARR_TYPE_BOIC_bit:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
