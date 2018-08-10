.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get0(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set0(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get1(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set1(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get2(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set2(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get3(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/mtp/MtpObjectInfo;->-set3(Landroid/mtp/MtpObjectInfo;J)J

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get4(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/mtp/MtpObjectInfo;->-set4(Landroid/mtp/MtpObjectInfo;J)J

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get5(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set5(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get6(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set7(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get7(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set8(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get8(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set9(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get9(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get10(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get11(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set12(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get12(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set13(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get13(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set14(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get14(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set15(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get15(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set16(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get16(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set17(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get17(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set18(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get18(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set19(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set0(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set1(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set2(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-set3(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-set4(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set5(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set7(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set8(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set9(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    :cond_1
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set12(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set13(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set14(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set15(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set16(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set17(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set18(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set19(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method
