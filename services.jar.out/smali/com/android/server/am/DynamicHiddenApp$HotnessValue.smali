.class Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotnessValue"
.end annotation


# instance fields
.field private isHotness:[Z

.field private nHotness:[I

.field private packageName:Ljava/lang/String;

.field skipPackage:Z

.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->uid:I

    iput-boolean v1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method decreaseHotness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method getHotness(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v0, v0, p1

    return v0
.end method

.method getIsHotness(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->uid:I

    return v0
.end method

.method increaseHotness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method setHalf(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    return-void
.end method

.method setHotness(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aput p1, v0, p2

    return-void
.end method

.method setIsHotness(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    aput-boolean p1, v0, p2

    return-void
.end method

.method setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->packageName:Ljava/lang/String;

    return-void
.end method

.method setUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->uid:I

    return-void
.end method
