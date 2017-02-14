.class Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierWindow"
.end annotation


# instance fields
.field private mChangeHeight:I

.field private mChangeWidth:I

.field private mCloseHeight:I

.field private mCloseWidth:I

.field private mHandleHeight:I

.field private mHandleWidth:I

.field private mPadHeight:I

.field private mPadWidth:I

.field final synthetic this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    iput p3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeWidth:I

    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeHeight:I

    iput p5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    iput p6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    return-void
.end method
