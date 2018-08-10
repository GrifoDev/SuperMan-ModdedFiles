.class public Landroid/app/ActivityManager$TaskSnapshot;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSnapshot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskSnapshot$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mOrientation:I

.field private final mReducedResolution:Z

.field private final mScale:F

.field private final mSnapshot:Landroid/graphics/GraphicBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    iput p2, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    iput-boolean p4, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    iput p5, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    return v0
.end method

.method public getSnapshot()Landroid/graphics/GraphicBuffer;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    return-object v0
.end method

.method public isReducedResolution()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TaskSnapshot{mSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mReducedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mSnapshot:Landroid/graphics/GraphicBuffer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mReducedResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
