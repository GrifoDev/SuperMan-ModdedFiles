.class Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VTWalkSet"
.end annotation


# instance fields
.field public m_nCount:I

.field public m_nStartID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    return-void
.end method
