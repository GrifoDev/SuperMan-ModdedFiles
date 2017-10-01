.class Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/content/clipboard/data/SemClipData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    return v0
.end method
