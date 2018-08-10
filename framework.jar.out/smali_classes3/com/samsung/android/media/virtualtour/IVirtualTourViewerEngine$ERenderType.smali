.class public final enum Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;
.super Ljava/lang/Enum;
.source "IVirtualTourViewerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

.field public static final enum NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

.field public static final enum OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

.field public static final enum ONSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    const-string/jumbo v1, "ONSCREEN_RENDERER"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->ONSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    new-instance v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    const-string/jumbo v1, "OFFSCREEN_RENDERER"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->ONSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;
    .locals 1

    const-class v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->$VALUES:[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    return-object v0
.end method
