.class public Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/EyeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectionInfo"
.end annotation


# instance fields
.field public mMsgId:I

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mMsgId:I

    return-void
.end method
