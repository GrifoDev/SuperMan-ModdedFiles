.class synthetic Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;
.super Ljava/lang/Object;
.source "VirtualTourViewerEngineSRIB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraAnimation:[I

.field static final synthetic $SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

.field static final synthetic $SwitchMap$com$samsung$android$media$virtualtour$VirtualTourDataManager$MetadataFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->values()[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraAnimation:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraAnimation:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_IN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraAnimation:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ZOOM_OUT:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    invoke-static {}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->values()[Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

    :try_start_2
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->ZOOM:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->PAN:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-static {}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->values()[Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$VirtualTourDataManager$MetadataFormat:[I

    :try_start_4
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$VirtualTourDataManager$MetadataFormat:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$VirtualTourDataManager$MetadataFormat:[I

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
