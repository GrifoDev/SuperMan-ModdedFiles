.class synthetic Lcom/samsung/android/srib/virtualtourRenderer/VTImage$1;
.super Ljava/lang/Object;
.source "VTImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/srib/virtualtourRenderer/VTImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$srib$virtualtourRenderer$Mesh$MeshType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->values()[Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage$1;->$SwitchMap$com$samsung$android$srib$virtualtourRenderer$Mesh$MeshType:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage$1;->$SwitchMap$com$samsung$android$srib$virtualtourRenderer$Mesh$MeshType:[I

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
