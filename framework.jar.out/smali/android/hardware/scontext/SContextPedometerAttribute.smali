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

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    .line 33
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 48
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 49
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "exerciseMode"    # I

    .prologue
    const/4 v2, -0x1

    .line 97
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 98
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 99
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 100
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 97
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 4
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    const/4 v2, -0x1

    .line 71
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 72
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 73
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 74
    iput-wide p2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 75
    iput-wide p4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_0

    .line 131
    const-string/jumbo v1, "gender"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string/jumbo v1, "height"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 133
    const-string/jumbo v1, "weight"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 137
    :goto_0
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 127
    return-void

    .line 135
    :cond_0
    const-string/jumbo v1, "exercise_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 106
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-lt v0, v3, :cond_0

    .line 107
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-le v0, v6, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The gender is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v2

    .line 111
    :cond_1
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_2

    .line 112
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The height is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 115
    :cond_2
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    .line 116
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The weight is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 119
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_4

    .line 120
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    if-le v0, v6, :cond_5

    .line 121
    :cond_4
    const-string/jumbo v0, "SContextPedometerAttribute"

    const-string/jumbo v1, "The exercise mode is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v2

    .line 124
    :cond_5
    return v3
.end method
