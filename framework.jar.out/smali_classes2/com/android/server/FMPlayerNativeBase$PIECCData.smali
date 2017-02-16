.class Lcom/android/server/FMPlayerNativeBase$PIECCData;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PIECCData"
.end annotation


# instance fields
.field public mECC:I

.field public mPI:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "PI"    # I
    .param p2, "ECC"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mPI:I

    .line 79
    iput p2, p0, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mECC:I

    .line 77
    return-void
.end method
