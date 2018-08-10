.class public Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualTourDepthMap"
.end annotation


# instance fields
.field private m_aDepthMap:[B

.field private m_cROI:Lcom/samsung/android/media/virtualtour/CRect;

.field private m_nHeight:I

.field private m_nWidth:I

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_nWidth:I

    iput p3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_nHeight:I

    iput-object p4, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_aDepthMap:[B

    return-void
.end method


# virtual methods
.method public getDepthMap_Array()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_aDepthMap:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_nHeight:I

    return v0
.end method

.method public getROI()Lcom/samsung/android/media/virtualtour/CRect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_cROI:Lcom/samsung/android/media/virtualtour/CRect;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_nWidth:I

    return v0
.end method

.method public setROI(Lcom/samsung/android/media/virtualtour/CRect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->m_cROI:Lcom/samsung/android/media/virtualtour/CRect;

    return-void
.end method
