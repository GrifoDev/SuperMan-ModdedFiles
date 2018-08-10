.class public Lcom/samsung/android/media/virtualtour/CPoint3D;
.super Ljava/lang/Object;
.source "CPoint3D.java"


# static fields
.field public static final ORIGIN:Lcom/samsung/android/media/virtualtour/CPoint3D;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/android/media/virtualtour/CPoint3D;

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/android/media/virtualtour/CPoint3D;-><init>(FFF)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/CPoint3D;->ORIGIN:Lcom/samsung/android/media/virtualtour/CPoint3D;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/virtualtour/CPoint3D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    return-void
.end method

.method public static subtract(Lcom/samsung/android/media/virtualtour/CPoint3D;Lcom/samsung/android/media/virtualtour/CPoint3D;)Lcom/samsung/android/media/virtualtour/CPoint3D;
    .locals 5

    new-instance v0, Lcom/samsung/android/media/virtualtour/CPoint3D;

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iget v2, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iget v3, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    iget v4, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CPoint3D;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public final set(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    return-void
.end method

.method public final set(Lcom/samsung/android/media/virtualtour/CPoint3D;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    return-void
.end method
