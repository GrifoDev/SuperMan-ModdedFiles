.class Lcom/android/systemui/plugins/VersionInfo$Version;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version"
.end annotation


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugins/VersionInfo$Version;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mRequired:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mVersion:I

    return v0
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mVersion:I

    iput-boolean p2, p0, Lcom/android/systemui/plugins/VersionInfo$Version;->mRequired:Z

    return-void
.end method
