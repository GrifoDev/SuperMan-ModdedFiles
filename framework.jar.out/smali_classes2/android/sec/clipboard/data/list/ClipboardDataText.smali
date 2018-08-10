.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mNumberOfTrailingWhiteLines:I

.field private mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setTextValue(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setNumberOfTrailingWhiteLines(I)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toLoad()V

    return-object v0
.end method
