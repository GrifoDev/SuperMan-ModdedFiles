.class public Lcom/android/server/wm/MinimalTaskDimensionsInfo;
.super Ljava/lang/Object;
.source "MinimalTaskDimensionsInfo.java"


# instance fields
.field final mDefaultMinSizeOfResizeableTask:I

.field final mIsDexCompatEnabled:Z

.field final mMinHeight:I

.field final mMinWidth:I

.field final mStackId:I


# direct methods
.method public constructor <init>(ZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mIsDexCompatEnabled:Z

    iput p2, p0, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mStackId:I

    iput p3, p0, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mMinWidth:I

    iput p4, p0, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mMinHeight:I

    iput p5, p0, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mDefaultMinSizeOfResizeableTask:I

    return-void
.end method
