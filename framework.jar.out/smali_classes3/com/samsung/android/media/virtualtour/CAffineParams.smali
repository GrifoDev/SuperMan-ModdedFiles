.class public Lcom/samsung/android/media/virtualtour/CAffineParams;
.super Ljava/lang/Object;
.source "CAffineParams.java"


# instance fields
.field public m_pf32Param1:[F

.field public m_pf32Param2:[F

.field public m_s32Index:I


# direct methods
.method public constructor <init>([F[FI)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param1:[F

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param2:[F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_s32Index:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param1:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param2:[F

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param1:[F

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/media/virtualtour/CAffineParams;->copy([F[FI)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param2:[F

    invoke-virtual {p0, v0, p2, v2}, Lcom/samsung/android/media/virtualtour/CAffineParams;->copy([F[FI)V

    return-void
.end method


# virtual methods
.method copy([F[FI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    aget v1, p2, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
