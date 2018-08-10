.class public Landroid/sec/clipboard/data/list/ClipboardDataUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUri.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPreviewImgPath:Ljava/lang/String;

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

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    return-object v0
.end method
