.class public final enum Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;
.super Ljava/lang/Enum;
.source "IVirtualTourViewerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECameraVelocity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

.field public static final enum FAST_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

.field public static final enum FAST_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

.field public static final enum NORMAL_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

.field public static final enum NORMAL_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

.field public static final enum OFFSCREEN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const-string/jumbo v1, "NORMAL_FORWARD"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const-string/jumbo v1, "FAST_FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const-string/jumbo v1, "NORMAL_BACKWARD"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const-string/jumbo v1, "FAST_BACKWARD"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const-string/jumbo v1, "OFFSCREEN"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->OFFSCREEN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->OFFSCREEN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;
    .locals 1

    const-class v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    return-object v0
.end method
