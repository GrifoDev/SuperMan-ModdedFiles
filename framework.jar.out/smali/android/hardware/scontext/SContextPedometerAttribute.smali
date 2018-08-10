.class public Landroid/hardware/scontext/SContextPedometerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextPedometerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static MODE_EXERCISE:I = 0x0

.field private static MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextPedometerAttribute"


# instance fields
.field private mExerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mMode:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 4

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    iput-wide p2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    iput-wide p4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "gender"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "weight"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_0
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v1, "exercise_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-le v0, v6, :cond_1

    :cond_0
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The gender is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_2

    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The height is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The weight is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    if-le v0, v6, :cond_5

    :cond_4
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The exercise mode is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    return v3
.end method
