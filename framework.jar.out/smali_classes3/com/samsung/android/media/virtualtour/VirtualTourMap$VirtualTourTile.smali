.class public Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualTourTile"
.end annotation


# instance fields
.field private m_cBmp:Landroid/graphics/Bitmap;

.field private m_cDepthMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

.field private m_cNextTransition:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

.field public m_nID:I

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_nID:I

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cNextTransition:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cDepthMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    return-void
.end method


# virtual methods
.method public getBitMap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDepthMap()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cDepthMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    return-object v0
.end method

.method public getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cNextTransition:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    return-object v0
.end method

.method public setBitMap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cDepthMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    return-void
.end method

.method public setNextTransistion(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_cNextTransition:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    return-void
.end method
