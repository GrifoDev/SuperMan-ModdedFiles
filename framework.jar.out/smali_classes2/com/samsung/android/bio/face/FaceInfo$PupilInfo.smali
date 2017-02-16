.class public Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/FaceInfo;
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

    .prologue
    const/4 v1, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    .line 169
    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mDistance:I

    .line 171
    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mOpening:I

    .line 173
    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mMsgId:I

    .line 176
    return-void
.end method
