.class public Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualTourTransition"
.end annotation


# instance fields
.field private m_afVector:Lcom/samsung/android/media/virtualtour/CVector3;

.field private m_fAffineParams:[F

.field private m_nDestTileID:I

.field private m_nTransitionType:I

.field private m_nTransitionValue:F

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;IF[FI)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/virtualtour/CVector3;

    const/4 v1, 0x0

    aget v1, p4, v1

    const/4 v2, 0x1

    aget v2, p4, v2

    const/4 v3, 0x2

    aget v3, p4, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_afVector:Lcom/samsung/android/media/virtualtour/CVector3;

    iput p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nTransitionType:I

    iput p3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nTransitionValue:F

    iput p5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nDestTileID:I

    return-void
.end method


# virtual methods
.method public getAffine()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_fAffineParams:[F

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nTransitionValue:F

    return v0
.end method

.method public getDestTileID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nDestTileID:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_nTransitionType:I

    return v0
.end method

.method public getVector()Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_afVector:Lcom/samsung/android/media/virtualtour/CVector3;

    return-object v0
.end method

.method public setAffineParams([F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->m_fAffineParams:[F

    return-void
.end method
