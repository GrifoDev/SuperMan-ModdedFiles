.class public Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/DatabaseIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseRow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    }
.end annotation


# instance fields
.field public final childClassName:Ljava/lang/String;

.field public final className:Ljava/lang/String;

.field public final enabled:Z

.field public final entries:Ljava/lang/String;

.field public final iconResId:I

.field public final intentAction:Ljava/lang/String;

.field public final intentTargetClass:Ljava/lang/String;

.field public final intentTargetPackage:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field public final normalizedSummaryOff:Ljava/lang/String;

.field public final normalizedSummaryOn:Ljava/lang/String;

.field public final normalizedTitle:Ljava/lang/String;

.field public final payload:[B

.field public final payloadType:I

.field public final rank:I

.field public final screenTitle:Ljava/lang/String;

.field public final spaceDelimitedKeywords:Ljava/lang/String;

.field public final updatedSummaryOff:Ljava/lang/String;

.field public final updatedSummaryOn:Ljava/lang/String;

.field public final updatedTitle:Ljava/lang/String;

.field public final userId:I


# direct methods
.method private constructor <init>(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get9(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->locale:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get20(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get12(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get19(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get11(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get18(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get10(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get3(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->entries:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get1(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get0(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get16(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get4(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->iconResId:I

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get15(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->rank:I

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get17(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->spaceDelimitedKeywords:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get5(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentAction:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get7(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get6(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get2(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->enabled:Z

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get8(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get21(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->userId:I

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get14(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->payloadType:I

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get13(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->-get13(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search2/ResultPayloadUtils;->marshall(Lcom/android/settings/search2/ResultPayload;)[B

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->payload:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;-><init>(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)V

    return-void
.end method


# virtual methods
.method public getDocId()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->payloadType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
