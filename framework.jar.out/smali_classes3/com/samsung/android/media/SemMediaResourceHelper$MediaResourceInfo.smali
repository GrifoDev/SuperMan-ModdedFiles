.class public final Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaResourceInfo"
.end annotation


# instance fields
.field private final mClientId:J

.field private final mCodecState:I

.field private final mFramerate:I

.field private final mHeight:I

.field private final mIsEncoder:Z

.field private final mIsSecured:Z

.field private final mPid:I

.field private final mResourceType:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZIJIIIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    iput-boolean p3, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    iput p7, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecState:I

    iput-wide p5, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mClientId:J

    iput p4, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    iput p8, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mWidth:I

    iput p9, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mHeight:I

    iput p10, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mFramerate:I

    iput-boolean p11, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsEncoder:Z

    return-void
.end method


# virtual methods
.method public getClientId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mClientId:J

    return-wide v0
.end method

.method public getCodecState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecState:I

    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    return v0
.end method

.method public getResourceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mFramerate:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mWidth:I

    return v0
.end method

.method public isEncoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsEncoder:Z

    return v0
.end method

.method public isSecured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    return v0
.end method
