.class public final enum Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;
.super Ljava/lang/Enum;
.source "IVirtualTourViewerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECameraAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum PAN_DOWN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum PAN_LEFT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum PAN_RIGHT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum PAN_UP:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum ZOOM_IN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

.field public static final enum ZOOM_OUT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "ZOOM_IN"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_IN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "ZOOM_OUT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_OUT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "PAN_RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_RIGHT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "PAN_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_LEFT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "PAN_UP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_UP:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const-string/jumbo v1, "PAN_DOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_DOWN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_IN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_OUT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_RIGHT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_LEFT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_UP:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->PAN_DOWN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;
    .locals 1

    const-class v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    return-object v0
.end method
