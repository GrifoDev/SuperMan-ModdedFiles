.class Lcom/android/systemui/splugins/SVersionInfo$Version;
.super Ljava/lang/Object;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version"
.end annotation


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/splugins/SVersionInfo$Version;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/splugins/SVersionInfo$Version;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/splugins/SVersionInfo$Version;->mVersion:I

    return v0
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/splugins/SVersionInfo$Version;->mVersion:I

    iput-boolean p2, p0, Lcom/android/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return-void
.end method
