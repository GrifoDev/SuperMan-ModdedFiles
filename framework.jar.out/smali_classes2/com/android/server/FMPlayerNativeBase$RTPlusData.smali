.class Lcom/android/server/FMPlayerNativeBase$RTPlusData;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RTPlusData"
.end annotation


# instance fields
.field public mAdditionalLen1:I

.field public mAdditionalLen2:I

.field public mContentType1:I

.field public mContentType2:I

.field public mStartPos1:I

.field public mStartPos2:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType1:I

    iput p2, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos1:I

    iput p3, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen1:I

    iput p4, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType2:I

    iput p5, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos2:I

    iput p6, p0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen2:I

    return-void
.end method
