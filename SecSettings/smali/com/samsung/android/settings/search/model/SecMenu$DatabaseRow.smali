.class public Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;
.super Ljava/lang/Object;
.source "SecMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/model/SecMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseRow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    }
.end annotation


# instance fields
.field public final categoryId:Ljava/lang/String;

.field public final childClassName:Ljava/lang/String;

.field public final className:Ljava/lang/String;

.field public final enabled:Z

.field public final entries:Ljava/lang/String;

.field public final iconResId:I

.field public final intentAction:Ljava/lang/String;

.field public final intentTargetClass:Ljava/lang/String;

.field public final intentTargetPackage:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final keywords:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field public final menuPath:Ljava/lang/String;

.field public final menuType:I

.field public final normalizedSummaryOff:Ljava/lang/String;

.field public normalizedSummaryOn:Ljava/lang/String;

.field public final normalizedTitle:Ljava/lang/String;

.field public final payload:[B

.field public final payloadType:I

.field public final rank:I

.field public final rankPath:Ljava/lang/String;

.field public final screenTitle:Ljava/lang/String;

.field public final spaceDelimitedKeywords:Ljava/lang/String;

.field public final updatedSummaryOff:Ljava/lang/String;

.field public updatedSummaryOn:Ljava/lang/String;

.field public final updatedTitle:Ljava/lang/String;

.field public final userId:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get11(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->locale:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get16(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get24(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get15(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get23(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get14(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get4(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->entries:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->className:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get1(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get21(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->iconResId:I

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get19(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rank:I

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get22(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->spaceDelimitedKeywords:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get6(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentAction:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get8(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get3(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->enabled:Z

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get26(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->userId:I

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get18(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payloadType:I

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get17(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get17(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search2/ResultPayloadUtils;->marshall(Lcom/android/settings/search2/ResultPayload;)[B

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payload:[B

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get13(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuType:I

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get10(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->keywords:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get0(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->categoryId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rankPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;-><init>(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    return-void
.end method
