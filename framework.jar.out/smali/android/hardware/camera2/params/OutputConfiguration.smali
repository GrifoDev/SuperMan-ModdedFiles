.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SURFACES_COUNT:I = 0x2

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final SURFACE_TYPE_SURFACE_VIEW:I

.field private final SURFACE_TYPE_UNKNOWN:I

.field private final mConfiguredDataspace:I

.field private final mConfiguredFormat:I

.field private final mConfiguredGenerationId:I

.field private final mConfiguredSize:Landroid/util/Size;

.field private final mIsDeferredConfig:Z

.field private mIsShared:Z

.field private mOption:I

.field private final mRotation:I

.field private final mSurfaceGroupId:I

.field private final mSurfaceType:I

.field private mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string/jumbo v0, "Surface must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Rotation constant"

    const/4 v1, 0x3

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    iput p4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 14

    const/16 v13, 0x22

    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v12, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v11, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    iput v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7, v9}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    const-string/jumbo v9, "Rotation constant"

    const/4 v10, 0x3

    invoke-static {v4, v11, v10, v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    iput v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object v7, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v8, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-object v7, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iput v12, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget-object v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    invoke-static {v9}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v9

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    invoke-static {v9}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v9

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget-object v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    invoke-virtual {v9}, Landroid/view/Surface;->getGenerationId()I

    move-result v9

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-static {v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v9

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v9

    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v11, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/16 v4, 0x22

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string/jumbo v0, "surfaceSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "klass must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p2, v0, :cond_1

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    :goto_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p2, v0, :cond_2

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    goto :goto_0

    :cond_2
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknow surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method


# virtual methods
.method public addSurface(Landroid/view/Surface;)V
    .locals 4

    const-string/jumbo v1, "Surface must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface is already added!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Exceeds maximum number of surfaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "OutputConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added surface size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is different than pre-configured size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", the pre-configured size will be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The format of added surface format doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    if-eq v1, v2, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The dataspace of added surface doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableSurfaceSharing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    if-ne p0, p1, :cond_1

    return v6

    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v3, :cond_6

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-eq v3, v4, :cond_3

    :cond_2
    return v5

    :cond_3
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_4

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v6

    :cond_6
    return v5
.end method

.method public getOption()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    new-array v2, v2, [I

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v3, v2, v1

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    aput v3, v2, v0

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v3, v2, v4

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    aput v3, v2, v5

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    aput v3, v2, v6

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v4, 0x5

    aput v3, v2, v4

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v3, :cond_0

    :goto_0
    const/4 v1, 0x6

    aput v0, v2, v1

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    new-array v2, v2, [I

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v3, v2, v1

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    aput v3, v2, v0

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    aput v3, v2, v4

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    aput v3, v2, v5

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v3, v2, v6

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    const/4 v4, 0x5

    aput v3, v2, v4

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v4, 0x6

    aput v3, v2, v4

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v3, :cond_2

    :goto_1
    const/4 v1, 0x7

    aput v0, v2, v1

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isDeferredConfiguration()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
