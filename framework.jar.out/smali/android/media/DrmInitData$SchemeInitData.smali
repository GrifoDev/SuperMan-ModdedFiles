.class public final Landroid/media/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeInitData"
.end annotation


# instance fields
.field public final data:[B

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/media/DrmInitData$SchemeInitData;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/DrmInitData$SchemeInitData;

    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    iget-object v2, v0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
