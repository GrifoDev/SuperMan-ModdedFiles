.class Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualTourCamera"
.end annotation


# instance fields
.field public m_fHFoV:F

.field public m_fVFoV:F

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fHFoV:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fVFoV:F

    return-void
.end method
