.class public Landroid/view/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MagnificationSpec$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public offsetX:F

.field public offsetY:F

.field public scale:F


# direct methods
.method static synthetic -wrap0(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 30
    sput-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 151
    new-instance v0, Landroid/view/MagnificationSpec$1;

    invoke-direct {v0}, Landroid/view/MagnificationSpec$1;-><init>()V

    sput-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 48
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 145
    return-void
.end method

.method public static obtain()Landroid/view/MagnificationSpec;
    .locals 2

    .prologue
    .line 76
    sget-object v1, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 77
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_0

    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :goto_0
    return-object v0

    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    new-instance v0, Landroid/view/MagnificationSpec;

    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    goto :goto_0
.end method

.method public static obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p0, "other"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 68
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 69
    .local v0, "info":Landroid/view/MagnificationSpec;
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 70
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 71
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 72
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 87
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 88
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 85
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p0, p1, :cond_0

    .line 113
    return v1

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 117
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 120
    check-cast v0, Landroid/view/MagnificationSpec;

    .line 121
    .local v0, "s":Landroid/view/MagnificationSpec;
    iget v3, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v0, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 126
    iget v2, p0, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 127
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 129
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 127
    goto :goto_1
.end method

.method public initialize(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .prologue
    .line 58
    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 59
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 60
    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 52
    return-void
.end method

.method public isNop()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 64
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->clear()V

    .line 82
    sget-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public setTo(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 92
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 93
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 94
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 105
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 106
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->recycle()V

    .line 103
    return-void
.end method
