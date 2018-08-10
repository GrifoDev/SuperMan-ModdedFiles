.class public Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/EyeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PupilInfo"
.end annotation


# instance fields
.field public mDistance:I

.field public mMsgId:I

.field public mOpening:I

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mDistance:I

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mOpening:I

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mMsgId:I

    return-void
.end method
