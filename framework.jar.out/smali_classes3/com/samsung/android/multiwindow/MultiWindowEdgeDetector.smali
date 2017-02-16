.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;,
        Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
    }
.end annotation


# static fields
.field private static final CHECK_TYPE_CIRCLE:I = 0x2

.field private static final CHECK_TYPE_LINE:I = 0x1

.field private static final CHECK_TYPE_UNDEFINED:I = 0x0

.field private static final DEBUG:Z = true

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_NONE:I = 0x0

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final MAX_EFFECTIVE_DEGREES:I = 0x46

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"


# instance fields
.field private mCheckAreaType:I

.field private mContext:Landroid/content/Context;

.field private mEdgeFlgas:I

.field private mHeight:I

.field private mMaxDegrees:I

.field private mScreenWidth:I

.field private mStartHeight:I

.field private mStartWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    .line 52
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCheckAreaType:I

    .line 56
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCheckAreaType:I

    .line 55
    return-void
.end method

.method private isNotSupportEdge(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadResources()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 220
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    .line 224
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    .line 226
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    .line 230
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 232
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateFromSystemProperties()V

    .line 218
    :cond_0
    return-void
.end method

.method private setEdgeFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    .line 237
    return-void
.end method

.method private updateFromSystemProperties()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 174
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-nez v6, :cond_0

    return-void

    .line 176
    :cond_0
    const-string/jumbo v6, "persist.dev.freeform.gesture.w"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 177
    .local v5, "sysWidth":I
    const-string/jumbo v6, "persist.dev.freeform.gesture.h"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, "sysHeight":I
    const-string/jumbo v6, "persist.dev.freeform.gesture.sw"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 179
    .local v4, "sysStartWidth":I
    const-string/jumbo v6, "persist.dev.freeform.gesture.sh"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 180
    .local v3, "sysStartHeight":I
    const-string/jumbo v6, "persist.dev.freeform.gesture.dr"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "sysDegrees":I
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    if-ltz v5, :cond_1

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    if-eq v6, v5, :cond_1

    .line 184
    iput v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_1
    if-ltz v2, :cond_2

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    if-eq v6, v2, :cond_2

    .line 188
    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_2
    if-ltz v4, :cond_3

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    if-eq v6, v4, :cond_3

    .line 192
    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_3
    if-ltz v3, :cond_4

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    if-eq v6, v3, :cond_4

    .line 196
    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_4
    if-ltz v1, :cond_5

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-eq v6, v1, :cond_5

    .line 200
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_5
    if-eqz v0, :cond_6

    .line 204
    const-string/jumbo v6, "MultiWindowEdgeDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFromSystemProperties: mWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    const-string/jumbo v8, ", mStartWidth="

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    iget v8, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    const-string/jumbo v8, ", mStartHeight="

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    iget v8, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    const-string/jumbo v8, ", mMaxDegrees="

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    iget v8, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_6
    return-void
.end method


# virtual methods
.method public checkEdgeFlags(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 95
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 97
    .local v2, "y":F
    const/4 v0, 0x0

    .line 102
    .local v0, "flags":I
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 108
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 109
    const/4 v0, 0x5

    .line 115
    :cond_1
    :goto_0
    const-string/jumbo v3, "MultiWindowEdgeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEdgeFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->edgeFlagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, "], w="

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, ", h="

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, ", screenWidth="

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, ", caller="

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0

    .line 110
    :cond_2
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 111
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getEdgeFlgas()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    return v0
.end method

.method public isEdge()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 243
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEffectiveAngle(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCheckAreaType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 156
    const v0, 0x7fffffff

    .line 157
    .local v0, "degrees":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    sparse-switch v1, :sswitch_data_0

    .line 166
    :goto_0
    const-string/jumbo v4, "MultiWindowEdgeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEffectiveAngle: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", degrees="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", mMaxDegrees="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_1

    :goto_2
    return v2

    .line 159
    :sswitch_0
    int-to-double v4, p2

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 160
    goto :goto_0

    .line 162
    :sswitch_1
    int-to-double v4, p2

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v1, p1

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 163
    goto :goto_0

    :cond_0
    move v1, v3

    .line 166
    goto :goto_1

    :cond_1
    move v2, v3

    .line 168
    goto :goto_2

    .line 170
    .end local v0    # "degrees":I
    :cond_2
    return v2

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 72
    .local v0, "onTouchEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return v0

    .line 69
    .end local v0    # "onTouchEvent":Z
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 74
    .restart local v0    # "onTouchEvent":Z
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isNotSupportEdge(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readyToFreeform(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCheckAreaType:I

    if-ne v4, v2, :cond_3

    .line 123
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    sparse-switch v4, :sswitch_data_0

    .line 142
    :cond_0
    return v3

    .line 125
    :sswitch_0
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    if-le p1, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    if-le p2, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 127
    :sswitch_1
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartHeight:I

    if-le p2, v4, :cond_2

    move v3, v2

    :cond_2
    return v3

    .line 129
    :cond_3
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCheckAreaType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 130
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartWidth:I

    mul-int v1, v4, v5

    .line 131
    .local v1, "radius":I
    const/4 v0, 0x0

    .line 132
    .local v0, "distance":I
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    sparse-switch v4, :sswitch_data_1

    .line 140
    :goto_1
    if-ge v1, v0, :cond_4

    :goto_2
    return v2

    .line 134
    :sswitch_2
    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int v0, v4, v5

    .line 135
    goto :goto_1

    .line 137
    :sswitch_3
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v5, p1

    mul-int/2addr v4, v5

    mul-int v5, p2, p2

    add-int v0, v4, v5

    .line 138
    goto :goto_1

    :cond_4
    move v2, v3

    .line 140
    goto :goto_2

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 132
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    .line 252
    return-void
.end method
